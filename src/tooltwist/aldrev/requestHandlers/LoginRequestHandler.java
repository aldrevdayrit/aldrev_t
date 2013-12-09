package tooltwist.aldrev.requestHandlers;

import java.io.IOException;
import javax.servlet.ServletException;

import com.dinaa.data.XData;
import com.dinaa.ui.UiModuleException;
import com.dinaa.ui.UimHelper;
import com.dinaa.xpc.Xpc;

import tooltwist.wbd.WbdRequestHandler;
import tooltwist.wbd.WbdSession;

/**
 * Request handler "login" - login Request Handler
 * 
 * This handler can be called from a client browser before control is passed to a normal
 * navpoint. To call it, add this parameter to a normal ToolTwist URL:
 * 
 *         op=aldrev_widgets.login.login
 * 
 * After this method is called, the requested navpoint will be displayed in the usual
 * manner. To pass control to a different navpoint, use RoutingUIM.gotoNavpoint(), and
 * then return true.
 *
 * @author ?
 */
public class LoginRequestHandler extends WbdRequestHandler
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
		
		String txtUser = uh.getRequestValue("txtUser");
		String txtPassword = uh.getRequestValue("txtPass");
		
		
		
		
		

// Uncomment this to redirect to a different navpoint
//				// Perhaps redirect to a different page
//				if (CHECK SOMETHING HERE)
//				{
//					String alternateNavpoint = "[[string-projectShortName]]-home";
//					RoutingUIM.gotoNavpoint(uh, alternateNavpoint);
//					return true; // redirected already
//				}
		
		
		
		// Select the data
		String successPage = uh.getRequestValue("successPage");
		
		try{
		Xpc xpc = uh.getXpc();
		xpc.start("phinza.D.userAccounts", "select");
		xpc.attrib("userName", txtUser);
		xpc.attrib("password", txtPassword);
		XData data = xpc.run();
		
		if (data.getRootType().equals("select")) {
			uh.getResponse().sendRedirect(successPage);
			uh.getRequest().getSession().setAttribute("isLoggedIn", true);
		}else{
			WbdSession.setTemporaryValue(uh.getCredentials(), "loginMessage", "N");
			
		}
		
		}catch(Exception e){
			e.printStackTrace();
		}
		
	
		
//		
//		if (!"y".equals("y")) {
//			
//			uh.getResponse().sendRedirect(successPage);
//			
//			
//		}
//		else {
//			
//		}
		
		
		return false;
	}

}
