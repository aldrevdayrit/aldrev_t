package tooltwist.aldrev.requestHandlers;

import java.io.IOException;
import javax.servlet.ServletException;

import com.dinaa.data.XData;
import com.dinaa.ui.UiModuleException;
import com.dinaa.ui.UimHelper;
import com.dinaa.xpc.Xpc;

import tooltwist.wbd.WbdRequestHandler;

/**
 * Request handler "contact" - Contact Request Handler
 * 
 * This handler can be called from a client browser before control is passed to a normal
 * navpoint. To call it, add this parameter to a normal ToolTwist URL:
 * 
 *         op=aldrev_widgets.editContact.contact
 * 
 * After this method is called, the requested navpoint will be displayed in the usual
 * manner. To pass control to a different navpoint, use RoutingUIM.gotoNavpoint(), and
 * then return true.
 *
 * @author ?
 */
public class ContactRequestHandler extends WbdRequestHandler
{

	@Override
	public boolean handler(UimHelper uh, String widgetId, String method) throws UiModuleException, ServletException, IOException
	{
		System.out.println("ContactRequestHandler.handler() - begin");
// Uncomment this to get variables from the request
//		// Take values from the request sent from the browser, and save them
//		// away for production helpers and code inserters to use.
	
		String txtHomeNo = uh.getRequestValue("txtHomeNo");
		String txtCellphoneNo = uh.getRequestValue("txtCellphoneNo");
		String txtCompanyNo = uh.getRequestValue("txtCompanyNo");
		String employeeId = uh.getRequestValue("employeeId");
		String txtContactId = uh.getRequestValue("txtContactId");
		System.out.println("HomeNo=" + txtHomeNo);
		
		try {
			
			if(employeeId != null){
				Xpc xpc = uh.getXpc();
				
				xpc.start("phinza.D.contactInfo", "insert");
				xpc.attrib("employeeId", employeeId);
				xpc.attrib("homeNo", txtHomeNo);
				xpc.attrib("cellphoneNo",txtCellphoneNo);
				xpc.attrib("companyNo", txtCompanyNo);
				xpc.run();
			
				
			}else{
				Xpc xpc = uh.getXpc();
			
				xpc.start("phinza.D.contactInfo", "update");
				xpc.attrib("employeeId", employeeId);
				xpc.attrib("contactId", txtContactId);
				xpc.attrib("homeNo", txtHomeNo);
				xpc.attrib("cellphoneNo",txtCellphoneNo);
				xpc.attrib("companyNo", txtCompanyNo);
				xpc.run();
			
			}
			//insert or update
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
//		if (firstname != null)
//			WbdSession.setTemporaryValue(uh.getCredentials(), "firstname", firstname);
//
//		String surname = uh.getRequestValue("surname");
//		if (surname != null)
//			WbdSession.setTemporaryValue(uh.getCredentials(), "surname", surname);
		

// Uncomment this to redirect to a different navpoint
//				// Perhaps redirect to a different page
//				if (CHECK SOMETHING HERE)
//				{
//					String alternateNavpoint = "[[string-projectShortName]]-home";
//					RoutingUIM.gotoNavpoint(uh, alternateNavpoint);
//					return true; // redirected already
//				}
		
		System.out.println("ContactRequestHandler.handler() - end");
		return false;
	}

}
