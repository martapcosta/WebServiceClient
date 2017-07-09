package com.example.taskmanagerapp.service;

public class TaskServiceImplProxy implements com.example.taskmanagerapp.service.TaskServiceImpl {
  private String _endpoint = null;
  private com.example.taskmanagerapp.service.TaskServiceImpl taskServiceImpl = null;
  
  public TaskServiceImplProxy() {
    _initTaskServiceImplProxy();
  }
  
  public TaskServiceImplProxy(String endpoint) {
    _endpoint = endpoint;
    _initTaskServiceImplProxy();
  }
  
  private void _initTaskServiceImplProxy() {
    try {
      taskServiceImpl = (new com.example.taskmanagerapp.service.TaskServiceImplServiceLocator()).getTaskServiceImpl();
      if (taskServiceImpl != null) {
        if (_endpoint != null)
          ((javax.xml.rpc.Stub)taskServiceImpl)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
        else
          _endpoint = (String)((javax.xml.rpc.Stub)taskServiceImpl)._getProperty("javax.xml.rpc.service.endpoint.address");
      }
      
    }
    catch (javax.xml.rpc.ServiceException serviceException) {}
  }
  
  public String getEndpoint() {
    return _endpoint;
  }
  
  public void setEndpoint(String endpoint) {
    _endpoint = endpoint;
    if (taskServiceImpl != null)
      ((javax.xml.rpc.Stub)taskServiceImpl)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
    
  }
  
  public com.example.taskmanagerapp.service.TaskServiceImpl getTaskServiceImpl() {
    if (taskServiceImpl == null)
      _initTaskServiceImplProxy();
    return taskServiceImpl;
  }
  
  public com.example.taskmanagerapp.beans.Task getTask(long id) throws java.rmi.RemoteException{
    if (taskServiceImpl == null)
      _initTaskServiceImplProxy();
    return taskServiceImpl.getTask(id);
  }
  
  public com.example.taskmanagerapp.beans.Task[] getAllTasks() throws java.rmi.RemoteException{
    if (taskServiceImpl == null)
      _initTaskServiceImplProxy();
    return taskServiceImpl.getAllTasks();
  }
  
  public boolean deleteTask(long id) throws java.rmi.RemoteException{
    if (taskServiceImpl == null)
      _initTaskServiceImplProxy();
    return taskServiceImpl.deleteTask(id);
  }
  
  public boolean addTask(com.example.taskmanagerapp.beans.Task t) throws java.rmi.RemoteException{
    if (taskServiceImpl == null)
      _initTaskServiceImplProxy();
    return taskServiceImpl.addTask(t);
  }
  
  public boolean updateTask(com.example.taskmanagerapp.beans.Task t, long id) throws java.rmi.RemoteException{
    if (taskServiceImpl == null)
      _initTaskServiceImplProxy();
    return taskServiceImpl.updateTask(t, id);
  }
  
  public boolean changeTaskStatus(long id, boolean status) throws java.rmi.RemoteException{
    if (taskServiceImpl == null)
      _initTaskServiceImplProxy();
    return taskServiceImpl.changeTaskStatus(id, status);
  }
  
  public com.example.taskmanagerapp.beans.Task[] getAllTasksByStatus(boolean status) throws java.rmi.RemoteException{
    if (taskServiceImpl == null)
      _initTaskServiceImplProxy();
    return taskServiceImpl.getAllTasksByStatus(status);
  }
  
  public float getPercentageOfOpenTasks() throws java.rmi.RemoteException{
    if (taskServiceImpl == null)
      _initTaskServiceImplProxy();
    return taskServiceImpl.getPercentageOfOpenTasks();
  }
  
  
}