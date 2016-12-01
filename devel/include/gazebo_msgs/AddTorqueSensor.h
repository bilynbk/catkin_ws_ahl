// Generated by gencpp from file gazebo_msgs/AddTorqueSensor.msg
// DO NOT EDIT!


#ifndef GAZEBO_MSGS_MESSAGE_ADDTORQUESENSOR_H
#define GAZEBO_MSGS_MESSAGE_ADDTORQUESENSOR_H

#include <ros/service_traits.h>


#include <gazebo_msgs/AddTorqueSensorRequest.h>
#include <gazebo_msgs/AddTorqueSensorResponse.h>


namespace gazebo_msgs
{

struct AddTorqueSensor
{

typedef AddTorqueSensorRequest Request;
typedef AddTorqueSensorResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct AddTorqueSensor
} // namespace gazebo_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::gazebo_msgs::AddTorqueSensor > {
  static const char* value()
  {
    return "925708c6a561d87c6886f8b30afab5d6";
  }

  static const char* value(const ::gazebo_msgs::AddTorqueSensor&) { return value(); }
};

template<>
struct DataType< ::gazebo_msgs::AddTorqueSensor > {
  static const char* value()
  {
    return "gazebo_msgs/AddTorqueSensor";
  }

  static const char* value(const ::gazebo_msgs::AddTorqueSensor&) { return value(); }
};


// service_traits::MD5Sum< ::gazebo_msgs::AddTorqueSensorRequest> should match 
// service_traits::MD5Sum< ::gazebo_msgs::AddTorqueSensor > 
template<>
struct MD5Sum< ::gazebo_msgs::AddTorqueSensorRequest>
{
  static const char* value()
  {
    return MD5Sum< ::gazebo_msgs::AddTorqueSensor >::value();
  }
  static const char* value(const ::gazebo_msgs::AddTorqueSensorRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::gazebo_msgs::AddTorqueSensorRequest> should match 
// service_traits::DataType< ::gazebo_msgs::AddTorqueSensor > 
template<>
struct DataType< ::gazebo_msgs::AddTorqueSensorRequest>
{
  static const char* value()
  {
    return DataType< ::gazebo_msgs::AddTorqueSensor >::value();
  }
  static const char* value(const ::gazebo_msgs::AddTorqueSensorRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::gazebo_msgs::AddTorqueSensorResponse> should match 
// service_traits::MD5Sum< ::gazebo_msgs::AddTorqueSensor > 
template<>
struct MD5Sum< ::gazebo_msgs::AddTorqueSensorResponse>
{
  static const char* value()
  {
    return MD5Sum< ::gazebo_msgs::AddTorqueSensor >::value();
  }
  static const char* value(const ::gazebo_msgs::AddTorqueSensorResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::gazebo_msgs::AddTorqueSensorResponse> should match 
// service_traits::DataType< ::gazebo_msgs::AddTorqueSensor > 
template<>
struct DataType< ::gazebo_msgs::AddTorqueSensorResponse>
{
  static const char* value()
  {
    return DataType< ::gazebo_msgs::AddTorqueSensor >::value();
  }
  static const char* value(const ::gazebo_msgs::AddTorqueSensorResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // GAZEBO_MSGS_MESSAGE_ADDTORQUESENSOR_H