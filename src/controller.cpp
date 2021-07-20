#include <iostream>
#include<stdio.h>
#include<math.h>
#include<bits/stdc++.h>
#include <ros/ros.h>
#include <std_msgs/String.h>
#include <geometry_msgs/Pose.h>
#include<swarmx/activate.h>

#include <geometry_msgs/PoseStamped.h>
#include<string>

#define MAX_DIGITS 10
using namespace std;

class Controller
{public:
    ros::NodeHandle n;
    queue<int> swarm;
    ros::Publisher pub1;
    ros::Subscriber sub;
    public:

    Controller(ros::NodeHandle *nh)
    {   n = *nh;
        sub = nh->subscribe("/status",1000, &Controller::status_callback,this);
    }

    void showq(queue<int> gq)
    {
        queue<int> g = gq;
        while (!g.empty()) {
            cout << '\t' << g.front();
            g.pop();
    }
        cout << '\n';
    }
    void swarming(queue<int> q,ros::NodeHandle *nh)
    {
        queue<int> q1 = q;
        int n = q.size();
        geometry_msgs::PoseStamped p;

        p.pose.position.z = 1;
        int nos,mav_id;
        string topic("");
        string t1("/mav");
        string t2("/command/pose");
        nos = n;

        while(!q1.empty())
        {   
            
            mav_id = q1.front();
            topic = t1+to_string(mav_id)+t2;
            
            pub1 = nh->advertise<geometry_msgs::PoseStamped>(topic,1000);

            

            p.pose.position.x = 2*cos(nos*6.28/n);
            p.pose.position.y = 2*sin(nos*6.28/n);

            while (pub1.getNumSubscribers() == 0)
            {   
                cout<<"Waiting for publisher sth idkk"<<endl;
                ros::Duration(0.5).sleep();

            }
            pub1.publish(p);

            q1.pop();

            nos = nos -1;
            
            



        
        }

    }
    void status_callback(const swarmx::activate::ConstPtr& msg)
    {
        ROS_INFO("Received ID: [%d]", msg->id);
        swarm.push(msg->id);

        showq(swarm);
        swarming(swarm,&n);
       
    }
};

int main(int argc, char **argv)
{    
    ros::init(argc,argv,"controller");
    ros::NodeHandle nh;
    Controller c(&nh);
    ros::spin();
}



    
    
   
    
    
    




