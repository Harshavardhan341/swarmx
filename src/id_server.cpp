#include "ros/ros.h"
#include<swarmx/getID.h>
#include "iostream"
using namespace std;

bool id_giver(swarmx::getID::Request &req,swarmx::getID::Response &res)
{
    res.id = "mav" + to_string(req.n);
    ROS_INFO("ID request for N : %ld",(long int)req.n);
    ROS_INFO("ID: [%ld]",(string)res.id);
    return true;

}

int main(int argc, char **argv)
{
    ros::init(argc,argv,"id_server");
    ros::NodeHandle nh;
    ros::ServiceServer service = nh.advertiseService("getID",id_giver);
    ros::spin();

    return 0;
}
