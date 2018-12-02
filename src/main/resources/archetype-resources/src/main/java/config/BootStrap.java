import javax.ws.rs.ApplicationPath;

#set($symbol_pound='#')
      #set($symbol_dollar='$')
      #set($symbol_escape='\' )

      package ${package}.config;

@SuppressWarnings({"EmptyClass", "SuppressionAnnotation"})
@ApplicationPath("rest")
public class BootStrap extends javax.ws.rs.core.Application {
}
