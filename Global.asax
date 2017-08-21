﻿<%@ Application Language="C#" %>

<script runat="server">

    void Application_Start(object sender, EventArgs e) 
    {
        // Code that runs on application startup
        ScriptManager.ScriptResourceMapping.AddDefinition(
           "jquery", new ScriptResourceDefinition
           {
               Path = "~/Scripts/jquery-2.1.4.js"
           }
           );
        ScriptManager.ScriptResourceMapping.AddDefinition(
          "UI", new ScriptResourceDefinition
          {
              Path = "~/Scripts/jquery-ui-1.11.4.js"
          }
          );
        ScriptManager.ScriptResourceMapping.AddDefinition(
          "JavaScript", new ScriptResourceDefinition
          {
              Path = "~/Scripts/JavaScript.js"
          }
          );
        
        

    }
    
    void Application_End(object sender, EventArgs e) 
    {
        //  Code that runs on application shutdown

    }
        
    void Application_Error(object sender, EventArgs e) 
    { 
        // Code that runs when an unhandled error occurs

    }

    void Session_Start(object sender, EventArgs e) 
    {
        // Code that runs when a new session is started

    }

    void Session_End(object sender, EventArgs e) 
    {
        // Code that runs when a session ends. 
        // Note: The Session_End event is raised only when the sessionstate mode
        // is set to InProc in the Web.config file. If session mode is set to StateServer 
        // or SQLServer, the event is not raised.

    }
       
</script>
