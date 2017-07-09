<%@page contentType="text/html;charset=UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<HTML>
<HEAD>
<TITLE>Result</TITLE>
</HEAD>
<BODY>
<H1>Result</H1>

<jsp:useBean id="sampleTaskServiceImplProxyid" scope="session" class="com.example.taskmanagerapp.service.TaskServiceImplProxy" />
<%
if (request.getParameter("endpoint") != null && request.getParameter("endpoint").length() > 0)
sampleTaskServiceImplProxyid.setEndpoint(request.getParameter("endpoint"));
%>

<%
String method = request.getParameter("method");
int methodID = 0;
if (method == null) methodID = -1;

if(methodID != -1) methodID = Integer.parseInt(method);
boolean gotMethod = false;

try {
switch (methodID){ 
case 2:
        gotMethod = true;
        java.lang.String getEndpoint2mtemp = sampleTaskServiceImplProxyid.getEndpoint();
if(getEndpoint2mtemp == null){
%>
<%=getEndpoint2mtemp %>
<%
}else{
        String tempResultreturnp3 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getEndpoint2mtemp));
        %>
        <%= tempResultreturnp3 %>
        <%
}
break;
case 5:
        gotMethod = true;
        String endpoint_0id=  request.getParameter("endpoint8");
            java.lang.String endpoint_0idTemp = null;
        if(!endpoint_0id.equals("")){
         endpoint_0idTemp  = endpoint_0id;
        }
        sampleTaskServiceImplProxyid.setEndpoint(endpoint_0idTemp);
break;
case 10:
        gotMethod = true;
        com.example.taskmanagerapp.service.TaskServiceImpl getTaskServiceImpl10mtemp = sampleTaskServiceImplProxyid.getTaskServiceImpl();
if(getTaskServiceImpl10mtemp == null){
%>
<%=getTaskServiceImpl10mtemp %>
<%
}else{
%>
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">returnp:</TD>
</TABLE>
<%
}
break;
case 17:
        gotMethod = true;
        String id_1id=  request.getParameter("id34");
        long id_1idTemp  = Long.parseLong(id_1id);
        com.example.taskmanagerapp.beans.Task getTask17mtemp = sampleTaskServiceImplProxyid.getTask(id_1idTemp);
if(getTask17mtemp == null){
%>
<%=getTask17mtemp %>
<%
}else{
%>
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">returnp:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">status:</TD>
<TD>
<%
if(getTask17mtemp != null){
%>
<%=getTask17mtemp.isStatus()
%><%}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">creationDate:</TD>
<TD>
<%
if(getTask17mtemp != null){
java.util.Calendar typecreationDate22 = getTask17mtemp.getCreationDate();
        java.text.DateFormat dateFormatcreationDate22 = java.text.DateFormat.getDateInstance();
        java.util.Date datecreationDate22 = typecreationDate22.getTime();
        String tempResultcreationDate22 = org.eclipse.jst.ws.util.JspUtils.markup(dateFormatcreationDate22.format(datecreationDate22));
        %>
        <%= tempResultcreationDate22 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">todoDate:</TD>
<TD>
<%
if(getTask17mtemp != null){
java.util.Calendar typetodoDate24 = getTask17mtemp.getTodoDate();
        java.text.DateFormat dateFormattodoDate24 = java.text.DateFormat.getDateInstance();
        java.util.Date datetodoDate24 = typetodoDate24.getTime();
        String tempResulttodoDate24 = org.eclipse.jst.ws.util.JspUtils.markup(dateFormattodoDate24.format(datetodoDate24));
        %>
        <%= tempResulttodoDate24 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">description:</TD>
<TD>
<%
if(getTask17mtemp != null){
java.lang.String typedescription26 = getTask17mtemp.getDescription();
        String tempResultdescription26 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typedescription26));
        %>
        <%= tempResultdescription26 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">title:</TD>
<TD>
<%
if(getTask17mtemp != null){
java.lang.String typetitle28 = getTask17mtemp.getTitle();
        String tempResulttitle28 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typetitle28));
        %>
        <%= tempResulttitle28 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">updateDate:</TD>
<TD>
<%
if(getTask17mtemp != null){
java.util.Calendar typeupdateDate30 = getTask17mtemp.getUpdateDate();
        java.text.DateFormat dateFormatupdateDate30 = java.text.DateFormat.getDateInstance();
        java.util.Date dateupdateDate30 = typeupdateDate30.getTime();
        String tempResultupdateDate30 = org.eclipse.jst.ws.util.JspUtils.markup(dateFormatupdateDate30.format(dateupdateDate30));
        %>
        <%= tempResultupdateDate30 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">id:</TD>
<TD>
<%
if(getTask17mtemp != null){
%>
<%=getTask17mtemp.getId()
%><%}%>
</TD>
</TABLE>
<%
}
break;
case 36:
        gotMethod = true;
        com.example.taskmanagerapp.beans.Task[] getAllTasks36mtemp = sampleTaskServiceImplProxyid.getAllTasks();
if(getAllTasks36mtemp == null){
%>
<%=getAllTasks36mtemp %>
<%
}else{
        String tempreturnp37 = null;
        if(getAllTasks36mtemp != null){
        java.util.List listreturnp37= java.util.Arrays.asList(getAllTasks36mtemp);
        tempreturnp37 = listreturnp37.toString();
        }
        %>
        <%=tempreturnp37%>
        <%
}
break;
case 39:
        gotMethod = true;
        String id_2id=  request.getParameter("id42");
        long id_2idTemp  = Long.parseLong(id_2id);
        boolean deleteTask39mtemp = sampleTaskServiceImplProxyid.deleteTask(id_2idTemp);
        String tempResultreturnp40 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(deleteTask39mtemp));
        %>
        <%= tempResultreturnp40 %>
        <%
break;
case 44:
        gotMethod = true;
        String status_4id=  request.getParameter("status49");
        boolean status_4idTemp  = Boolean.valueOf(status_4id).booleanValue();
        String creationDate_5id=  request.getParameter("creationDate51");
            java.util.Calendar creationDate_5idTemp = null;
        if(!creationDate_5id.equals("")){
        java.text.DateFormat dateFormatcreationDate51 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempcreationDate51  = dateFormatcreationDate51.parse(creationDate_5id);
         creationDate_5idTemp = new java.util.GregorianCalendar();
        creationDate_5idTemp.setTime(dateTempcreationDate51);
        }
        String todoDate_6id=  request.getParameter("todoDate53");
            java.util.Calendar todoDate_6idTemp = null;
        if(!todoDate_6id.equals("")){
        java.text.DateFormat dateFormattodoDate53 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTemptodoDate53  = dateFormattodoDate53.parse(todoDate_6id);
         todoDate_6idTemp = new java.util.GregorianCalendar();
        todoDate_6idTemp.setTime(dateTemptodoDate53);
        }
        String description_7id=  request.getParameter("description55");
            java.lang.String description_7idTemp = null;
        if(!description_7id.equals("")){
         description_7idTemp  = description_7id;
        }
        String title_8id=  request.getParameter("title57");
            java.lang.String title_8idTemp = null;
        if(!title_8id.equals("")){
         title_8idTemp  = title_8id;
        }
        String updateDate_9id=  request.getParameter("updateDate59");
            java.util.Calendar updateDate_9idTemp = null;
        if(!updateDate_9id.equals("")){
        java.text.DateFormat dateFormatupdateDate59 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempupdateDate59  = dateFormatupdateDate59.parse(updateDate_9id);
         updateDate_9idTemp = new java.util.GregorianCalendar();
        updateDate_9idTemp.setTime(dateTempupdateDate59);
        }
        String id_10id=  request.getParameter("id61");
        long id_10idTemp  = Long.parseLong(id_10id);
        %>
        <jsp:useBean id="com1example1taskmanagerapp1beans1Task_3id" scope="session" class="com.example.taskmanagerapp.beans.Task" />
        <%
        com1example1taskmanagerapp1beans1Task_3id.setStatus(status_4idTemp);
        com1example1taskmanagerapp1beans1Task_3id.setCreationDate(creationDate_5idTemp);
        com1example1taskmanagerapp1beans1Task_3id.setTodoDate(todoDate_6idTemp);
        com1example1taskmanagerapp1beans1Task_3id.setDescription(description_7idTemp);
        com1example1taskmanagerapp1beans1Task_3id.setTitle(title_8idTemp);
        com1example1taskmanagerapp1beans1Task_3id.setUpdateDate(updateDate_9idTemp);
        com1example1taskmanagerapp1beans1Task_3id.setId(id_10idTemp);
        boolean addTask44mtemp = sampleTaskServiceImplProxyid.addTask(com1example1taskmanagerapp1beans1Task_3id);
        String tempResultreturnp45 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(addTask44mtemp));
        %>
        <%= tempResultreturnp45 %>
        <%
break;
case 63:
        gotMethod = true;
        String status_12id=  request.getParameter("status68");
        boolean status_12idTemp  = Boolean.valueOf(status_12id).booleanValue();
        String creationDate_13id=  request.getParameter("creationDate70");
            java.util.Calendar creationDate_13idTemp = null;
        if(!creationDate_13id.equals("")){
        java.text.DateFormat dateFormatcreationDate70 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempcreationDate70  = dateFormatcreationDate70.parse(creationDate_13id);
         creationDate_13idTemp = new java.util.GregorianCalendar();
        creationDate_13idTemp.setTime(dateTempcreationDate70);
        }
        String todoDate_14id=  request.getParameter("todoDate72");
            java.util.Calendar todoDate_14idTemp = null;
        if(!todoDate_14id.equals("")){
        java.text.DateFormat dateFormattodoDate72 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTemptodoDate72  = dateFormattodoDate72.parse(todoDate_14id);
         todoDate_14idTemp = new java.util.GregorianCalendar();
        todoDate_14idTemp.setTime(dateTemptodoDate72);
        }
        String description_15id=  request.getParameter("description74");
            java.lang.String description_15idTemp = null;
        if(!description_15id.equals("")){
         description_15idTemp  = description_15id;
        }
        String title_16id=  request.getParameter("title76");
            java.lang.String title_16idTemp = null;
        if(!title_16id.equals("")){
         title_16idTemp  = title_16id;
        }
        String updateDate_17id=  request.getParameter("updateDate78");
            java.util.Calendar updateDate_17idTemp = null;
        if(!updateDate_17id.equals("")){
        java.text.DateFormat dateFormatupdateDate78 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempupdateDate78  = dateFormatupdateDate78.parse(updateDate_17id);
         updateDate_17idTemp = new java.util.GregorianCalendar();
        updateDate_17idTemp.setTime(dateTempupdateDate78);
        }
        String id_18id=  request.getParameter("id80");
        long id_18idTemp  = Long.parseLong(id_18id);
        %>
        <jsp:useBean id="com1example1taskmanagerapp1beans1Task_11id" scope="session" class="com.example.taskmanagerapp.beans.Task" />
        <%
        com1example1taskmanagerapp1beans1Task_11id.setStatus(status_12idTemp);
        com1example1taskmanagerapp1beans1Task_11id.setCreationDate(creationDate_13idTemp);
        com1example1taskmanagerapp1beans1Task_11id.setTodoDate(todoDate_14idTemp);
        com1example1taskmanagerapp1beans1Task_11id.setDescription(description_15idTemp);
        com1example1taskmanagerapp1beans1Task_11id.setTitle(title_16idTemp);
        com1example1taskmanagerapp1beans1Task_11id.setUpdateDate(updateDate_17idTemp);
        com1example1taskmanagerapp1beans1Task_11id.setId(id_18idTemp);
        String id_19id=  request.getParameter("id82");
        long id_19idTemp  = Long.parseLong(id_19id);
        boolean updateTask63mtemp = sampleTaskServiceImplProxyid.updateTask(com1example1taskmanagerapp1beans1Task_11id,id_19idTemp);
        String tempResultreturnp64 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(updateTask63mtemp));
        %>
        <%= tempResultreturnp64 %>
        <%
break;
case 84:
        gotMethod = true;
        String id_20id=  request.getParameter("id87");
        long id_20idTemp  = Long.parseLong(id_20id);
        String status_21id=  request.getParameter("status89");
        boolean status_21idTemp  = Boolean.valueOf(status_21id).booleanValue();
        boolean changeTaskStatus84mtemp = sampleTaskServiceImplProxyid.changeTaskStatus(id_20idTemp,status_21idTemp);
        String tempResultreturnp85 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(changeTaskStatus84mtemp));
        %>
        <%= tempResultreturnp85 %>
        <%
break;
case 91:
        gotMethod = true;
        String status_22id=  request.getParameter("status94");
        boolean status_22idTemp  = Boolean.valueOf(status_22id).booleanValue();
        com.example.taskmanagerapp.beans.Task[] getAllTasksByStatus91mtemp = sampleTaskServiceImplProxyid.getAllTasksByStatus(status_22idTemp);
if(getAllTasksByStatus91mtemp == null){
%>
<%=getAllTasksByStatus91mtemp %>
<%
}else{
        String tempreturnp92 = null;
        if(getAllTasksByStatus91mtemp != null){
        java.util.List listreturnp92= java.util.Arrays.asList(getAllTasksByStatus91mtemp);
        tempreturnp92 = listreturnp92.toString();
        }
        %>
        <%=tempreturnp92%>
        <%
}
break;
case 96:
        gotMethod = true;
        float getPercentageOfOpenTasks96mtemp = sampleTaskServiceImplProxyid.getPercentageOfOpenTasks();
        String tempResultreturnp97 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getPercentageOfOpenTasks96mtemp));
        %>
        <%= tempResultreturnp97 %>
        <%
break;
}
} catch (Exception e) { 
%>
Exception: <%= org.eclipse.jst.ws.util.JspUtils.markup(e.toString()) %>
Message: <%= org.eclipse.jst.ws.util.JspUtils.markup(e.getMessage()) %>
<%
return;
}
if(!gotMethod){
%>
result: N/A
<%
}
%>
</BODY>
</HTML>