package tooltwist.aldrev.requestHandlers;

import java.io.IOException;
import javax.servlet.ServletException;
import com.dinaa.ui.UiModuleException;
import com.dinaa.ui.UimHelper;
import com.dinaa.xpc.Xpc;

import tooltwist.wbd.WbdRequestHandler;

/**
 * Request handler "editAddress" - edit address request handler
 * 
 * This handler can be called from a client browser before control is passed to a normal
 * navpoint. To call it, add this parameter to a normal ToolTwist URL:
 * 
 *         op=aldrev_widgets.editAddress.editAddress
 * 
 * After this method is called, the requested navpoint will be displayed in the usual
 * manner. To pass control to a different navpoint, use RoutingUIM.gotoNavpoint(), and
 * then return true.
 *
 * @author ?
 */
public class EditAddressRequestHandler extends WbdRequestHandler
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
		
		String txtAddressId = uh.getRequestValue("txtAddressId");
		String txtHouseNo = uh.getRequestValue("txtHouseNo");
		String txtStreet = uh.getRequestValue("txtStreet");
		String txtBarangay = uh.getRequestValue("txtBarangay");
		String txtCity = uh.getRequestValue("txtCity");
		String txtMunicipality = uh.getRequestValue("txtMunicipality");
		String txtProvince = uh.getRequestValue("txtProvince");
		String txtCountry = uh.getRequestValue("txtCountry");
		String txtZipCode = uh.getRequestValue("txtZipCode");
		String employeeId = uh.getRequestValue("employeeId");
		
		try{
			if(employeeId != null && txtAddressId.equals("") ){
				Xpc xpc = uh.getXpc();
				
				xpc.start("phinza.D.address", "insert");
				xpc.attrib("employeeId", employeeId);				
				xpc.attrib("houseNo", txtHouseNo);
				xpc.attrib("street", txtStreet);
				xpc.attrib("barangay", txtBarangay);
				xpc.attrib("city", txtCity);
				xpc.attrib("municipality", txtMunicipality);
				xpc.attrib("province", txtProvince);
				xpc.attrib("country", txtCountry);
				xpc.attrib("zipCode", txtZipCode);					
				xpc.run();
			
				
			}else{
				Xpc xpc = uh.getXpc();
			
				xpc.start("phinza.D.address", "update");
				xpc.attrib("employeeId", employeeId);
				xpc.attrib("addressId", txtAddressId);
				xpc.attrib("houseNo", txtHouseNo);
				xpc.attrib("street", txtStreet);
				xpc.attrib("barangay", txtBarangay);
				xpc.attrib("city", txtCity);
				xpc.attrib("municipality", txtMunicipality);
				xpc.attrib("province", txtProvince);
				xpc.attrib("country", txtCountry);
				xpc.attrib("zipCode", txtZipCode);
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
