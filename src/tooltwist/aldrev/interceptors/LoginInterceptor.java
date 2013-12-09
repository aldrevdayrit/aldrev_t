package tooltwist.aldrev.interceptors;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import com.dinaa.ui.UiModuleException;
import com.dinaa.ui.UimHelper;

import tooltwist.ecommerce.WbdInterceptor;

public class LoginInterceptor extends WbdInterceptor {

	Logger logger = Logger.getLogger(LoginInterceptor.class);
	
	@Override
	public boolean intercept(UimHelper arg0, String arg1) throws UiModuleException, ServletException, IOException {
		
		HttpServletResponse response = arg0.getResponse();
		HttpServletRequest request = arg0.getRequest();
		
		StringBuffer requestURL = request.getRequestURL();
		if (requestURL.indexOf("ttdemo-19") > -1)
			return false;
				 
		Object isLoggedIn = request.getSession().getAttribute("isLoggedIn");
		
		
		if ((isLoggedIn == null || !(Boolean)isLoggedIn)) {
			response.sendRedirect("/ttsvr/n/ttdemo-19");
		}
		
		logger.debug("interept()");
		
		return false;
	}

}
