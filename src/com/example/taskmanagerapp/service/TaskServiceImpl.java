/**
 * TaskServiceImpl.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package com.example.taskmanagerapp.service;

public interface TaskServiceImpl extends java.rmi.Remote {
    public com.example.taskmanagerapp.beans.Task getTask(long id) throws java.rmi.RemoteException;
    public com.example.taskmanagerapp.beans.Task[] getAllTasks() throws java.rmi.RemoteException;
    public boolean deleteTask(long id) throws java.rmi.RemoteException;
    public boolean addTask(com.example.taskmanagerapp.beans.Task t) throws java.rmi.RemoteException;
    public boolean updateTask(com.example.taskmanagerapp.beans.Task t, long id) throws java.rmi.RemoteException;
    public boolean changeTaskStatus(long id, boolean status) throws java.rmi.RemoteException;
    public com.example.taskmanagerapp.beans.Task[] getAllTasksByStatus(boolean status) throws java.rmi.RemoteException;
    public float getPercentageOfOpenTasks() throws java.rmi.RemoteException;
}
