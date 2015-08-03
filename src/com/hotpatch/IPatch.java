package com.hotpatch;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface IPatch {
	void getPatchInfo(HttpServletRequest req ,HttpServletResponse resp);
}
