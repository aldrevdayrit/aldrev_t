package tooltwist.aldrev.requestHandlers;

import java.io.IOException;
import javax.servlet.ServletException;
import com.dinaa.ui.UiModuleException;
import com.dinaa.ui.UimHelper;
import com.dinaa.xpc.Xpc;

import tooltwist.wbd.WbdRequestHandler;

/**
 * Request handler "editEmployee" - edit employee request handler
 * 
 * This handler can be called from a client browser before control is passed to a normal
 * navpoint. To call it, add this parameter to a normal ToolTwist URL:
 * 
 *         op=aldrev_widgets.dynamicEmployeeList.editEmployee
 * 
 * After this method is called, the requested navpoint will be displayed in the usual
 * manner. To pass control to a different navpoint, use RoutingUIM.gotoNavpoint(), and
 * then return true.
 *
 * @author ?
 */
public class EditEmployeeRequestHandler extends WbdRequestHandler
{

	@Override
	public boolean handler(UimHelper uh, String widgetId, String method) throws UiModuleException, ServletException, IOException
	{
// Uncomment this to get variables from the request
//		// Take values from the request sent from the browser, and save them
//		// away for production helpers and code inserters to use.
//		String firstname = uh.getRequestValue("firstname");
//		if (firstname != null)
//			WbdSession.setTemporaryValue(uh.getCredentials(), "firstname", firstname);
//
//		String surname = uh.getRequestValue("surname");
//		if (surname != null)
//			WbdSession.setTemporaryValue(uh.getCredentials(), "surname", surname);
		
	
		String txtFirstName = uh.getRequestValue("txtFirstName");
		String txtMiddleName = uh.getRequestValue("txtMiddleName");
		String txtLastName = uh.getRequestValue("txtLastName");
		String txtNickName = uh.getRequestValue("txtNickName");
	
		String employeeId =  uh.getRequestValue("employeeId");
		
		try{
			if(employeeId.equals("")){
				Xpc xpc = uh.getXpc();
				xpc.start("phinza.D.employee", "insert");
				
				xpc.attrib("firstName", txtFirstName);
				xpc.attrib("middleName", txtMiddleName);
				xpc.attrib("lastName", txtLastName);
				xpc.attrib("nickName", txtNickName);
				
				xpc.run();
				
			}else{
				Xpc xpc = uh.getXpc();
				xpc.start("phinza.D.employee", "update");
				xpc.attrib("employeeId", employeeId);
				xpc.attrib("firstName", txtFirstName);
				xpc.attrib("middleName", txtMiddleName);
				xpc.attrib("lastName", txtLastName);
				xpc.attrib("nickName", txtNickName);
				
				xpc.run();
				
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}
// Uncomment this to redirect to a different navpoint
//				// Perhaps redirect to a different page
//				if (CHECK SOMETHING HERE)
//				{
//					String alternateNavpoint = "[[string-projectShortName]]-home";
//					RoutingUIM.gotoNavpoint(uh, alternateNavpoint);
//					return true; // redirected already
//				}
		return false;
	}

}
