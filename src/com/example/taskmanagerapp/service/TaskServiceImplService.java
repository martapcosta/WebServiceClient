/**
 * TaskServiceImplService.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package com.example.taskmanagerapp.service;

public interface TaskServiceImplService extends javax.xml.rpc.Service {
    public java.lang.String getTaskServiceImplAddress();

    public com.example.taskmanagerapp.service.TaskServiceImpl getTaskServiceImpl() throws javax.xml.rpc.ServiceException;

    public com.example.taskmanagerapp.service.TaskServiceImpl getTaskServiceImpl(java.net.URL portAddress) throws javax.xml.rpc.ServiceException;
}
