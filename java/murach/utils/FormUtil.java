package murach.utils;


import java.lang.reflect.InvocationTargetException;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.beanutils.BeanUtils;


public class FormUtil {
	
	@SuppressWarnings({ "unchecked", "deprecation" })
	public static <T> T toModel(Class<T> clazz, HttpServletRequest req) {
		
		T object = null;

		try {
			try {
				object = clazz.newInstance();
			} catch (IllegalAccessException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			
			try {
				BeanUtils.populate(object, req.getParameterMap());
			} catch (IllegalAccessException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (InvocationTargetException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			System.out.println(object);			
			System.out.println(req.getParameterMap());
			
		} catch (InstantiationException e) {
			e.printStackTrace();
		}
		
		return object;
	}
}
