package com.hotpatch;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alibaba.fastjson.JSON;
import com.server.fileupload.FileUpLoad;

public class DefaultPatch implements IPatch {
	

	@Override
	public void getPatchInfo(HttpServletRequest request,HttpServletResponse resp) {
		PatchInfo info=new PatchInfo();
		String path = request.getRealPath("/upload");
		//String version=request.getAttribute("version").toString();
		File file=new File(path,"app-debug.apk");
		String md5=FileUpLoad.getMd5ByFile(file);
		info.md5=md5;
		//please change the url to your service ip address
		info.patchApkUrl="http://192.168.0.100:8080/PathServer/upload/app-debug.apk";
	    
		String text=JSON.toJSONString(info);
		try {
			resp.getWriter().write(text);
			resp.getWriter().close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
