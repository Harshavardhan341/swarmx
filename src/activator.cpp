#include<iostream>
#include<ros/ros.h>
#include<swarmx/activate.h>
#include<string>
#include <sstream>
using namespace std;


int ifFound(int arr[], int l, int r, int x)
{
    if (r >= l) {
        int mid = l + (r - l) / 2;
 
        // If the element is present at the middle
        // itself
        if (arr[mid] == x)
            return mid;
 
        // If element is smaller than mid, then
        // it can only be present in left subarray
        if (arr[mid] > x)
            return ifFound(arr, l, mid - 1, x);
 
        // Else the element can only be present
        // in right subarray
        return ifFound(arr, mid + 1, r, x);
    }
 
    // We reach here when element is not
    // present in array
    return -1;
}

int main(int argc, char **argv)
{
    ros::init(argc,argv,"activator");

    ros::NodeHandle nh;

    ros::Publisher pub = nh.advertise<swarmx::activate>("/status",1000);
   
    int ids[] = {1,2,3,4,5,6};
    
    int len = sizeof(ids)/sizeof(ids[0]);
    bool flags[len];

    
    cout<<"size"<<len<<endl;

    for(int i=0;i<len;i++)
    {
        cout<<flags[i]<<endl;
        if(flags[i])
            flags[i] = 0;
        cout<<flags[i]<<endl;
        
    }

    
    swarmx::activate A;
    
    std::stringstream ss;
    ss<<"READY";

    int num;

    while(ros::ok())
    {
    cout<<"Enter ID"<<endl;
    cin>>num;
    cout<<ifFound(ids,0,len-1,num)<<endl;
    cout<<flags[ifFound(ids,0,len-1,num)]<<endl;
    if(ifFound(ids,0,len-1,num)!=-1 && flags[ifFound(ids,0,(len-1),num)]==false)
    { 
        A.id = num;
        flags[ifFound(ids,0,(len-1),num)] = true;}
    else 
    {   cout<<"Not found on ground!"<<endl;
        continue;
    }

    A.status = ss.str();
    
    ROS_INFO("ID: %d ",A.id);
    ROS_INFO("STATUS: %s",A.status.c_str());

    while (pub.getNumSubscribers() == 0)
    {   
        cout<<"Waiting for publisher sth idkk"<<endl;
        ros::Duration(0.5).sleep();

    }

    ROS_INFO("ID: %d ",A.id);
    ROS_INFO("STATUS: %s",A.status.c_str());
    pub.publish(A);

    
    

     
   }
}