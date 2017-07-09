/**
 * TaskServiceImplServiceLocator.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package com.example.taskmanagerapp.service;

public class TaskServiceImplServiceLocator extends org.apache.axis.client.Service implements com.example.taskmanagerapp.service.TaskServiceImplService {

    public TaskServiceImplServiceLocator() {
    }


    public TaskServiceImplServiceLocator(org.apache.axis.EngineConfiguration config) {
        super(config);
    }

    public TaskServiceImplServiceLocator(java.lang.String wsdlLoc, javax.xml.namespace.QName sName) throws javax.xml.rpc.ServiceException {
        super(wsdlLoc, sName);
    }

    // Use to get a proxy class for TaskServiceImpl
    private java.lang.String TaskServiceImpl_address = "http://localhost:8080/TaskManagerWS/services/TaskServiceImpl";

    public java.lang.String getTaskServiceImplAddress() {
        return TaskServiceImpl_address;
    }

    // The WSDD service name defaults to the port name.
    private java.lang.String TaskServiceImplWSDDServiceName = "TaskServiceImpl";

    public java.lang.String getTaskServiceImplWSDDServiceName() {
        return TaskServiceImplWSDDServiceName;
    }

    public void setTaskServiceImplWSDDServiceName(java.lang.String name) {
        TaskServiceImplWSDDServiceName = name;
    }

    public com.example.taskmanagerapp.service.TaskServiceImpl getTaskServiceImpl() throws javax.xml.rpc.ServiceException {
       java.net.URL endpoint;
        try {
            endpoint = new java.net.URL(TaskServiceImpl_address);
        }
        catch (java.net.MalformedURLException e) {
            throw new javax.xml.rpc.ServiceException(e);
        }
        return getTaskServiceImpl(endpoint);
    }

    public com.example.taskmanagerapp.service.TaskServiceImpl getTaskServiceImpl(java.net.URL portAddress) throws javax.xml.rpc.ServiceException {
        try {
            com.example.taskmanagerapp.service.TaskServiceImplSoapBindingStub _stub = new com.example.taskmanagerapp.service.TaskServiceImplSoapBindingStub(portAddress, this);
            _stub.setPortName(getTaskServiceImplWSDDServiceName());
            return _stub;
        }
        catch (org.apache.axis.AxisFault e) {
            return null;
        }
    }

    public void setTaskServiceImplEndpointAddress(java.lang.String address) {
        TaskServiceImpl_address = address;
    }

    /**
     * For the given interface, get the stub implementation.
     * If this service has no port for the given interface,
     * then ServiceException is thrown.
     */
    public java.rmi.Remote getPort(Class serviceEndpointInterface) throws javax.xml.rpc.ServiceException {
        try {
            if (com.example.taskmanagerapp.service.TaskServiceImpl.class.isAssignableFrom(serviceEndpointInterface)) {
                com.example.taskmanagerapp.service.TaskServiceImplSoapBindingStub _stub = new com.example.taskmanagerapp.service.TaskServiceImplSoapBindingStub(new java.net.URL(TaskServiceImpl_address), this);
                _stub.setPortName(getTaskServiceImplWSDDServiceName());
                return _stub;
            }
        }
        catch (java.lang.Throwable t) {
            throw new javax.xml.rpc.ServiceException(t);
        }
        throw new javax.xml.rpc.ServiceException("There is no stub implementation for the interface:  " + (serviceEndpointInterface == null ? "null" : serviceEndpointInterface.getName()));
    }

    /**
     * For the given interface, get the stub implementation.
     * If this service has no port for the given interface,
     * then ServiceException is thrown.
     */
    public java.rmi.Remote getPort(javax.xml.namespace.QName portName, Class serviceEndpointInterface) throws javax.xml.rpc.ServiceException {
        if (portName == null) {
            return getPort(serviceEndpointInterface);
        }
        java.lang.String inputPortName = portName.getLocalPart();
        if ("TaskServiceImpl".equals(inputPortName)) {
            return getTaskServiceImpl();
        }
        else  {
            java.rmi.Remote _stub = getPort(serviceEndpointInterface);
            ((org.apache.axis.client.Stub) _stub).setPortName(portName);
            return _stub;
        }
    }

    public javax.xml.namespace.QName getServiceName() {
        return new javax.xml.namespace.QName("http://service.taskmanagerapp.example.com", "TaskServiceImplService");
    }

    private java.util.HashSet ports = null;

    public java.util.Iterator getPorts() {
        if (ports == null) {
            ports = new java.util.HashSet();
            ports.add(new javax.xml.namespace.QName("http://service.taskmanagerapp.example.com", "TaskServiceImpl"));
        }
        return ports.iterator();
    }

    /**
    * Set the endpoint address for the specified port name.
    */
    public void setEndpointAddress(java.lang.String portName, java.lang.String address) throws javax.xml.rpc.ServiceException {
        
if ("TaskServiceImpl".equals(portName)) {
            setTaskServiceImplEndpointAddress(address);
        }
        else 
{ // Unknown Port Name
            throw new javax.xml.rpc.ServiceException(" Cannot set Endpoint Address for Unknown Port" + portName);
        }
    }

    /**
    * Set the endpoint address for the specified port name.
    */
    public void setEndpointAddress(javax.xml.namespace.QName portName, java.lang.String address) throws javax.xml.rpc.ServiceException {
        setEndpointAddress(portName.getLocalPart(), address);
    }

}
