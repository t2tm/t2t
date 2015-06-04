package com.t2t.tss.listener

import javax.servlet.{ServletContext, ServletContextEvent, ServletContextListener}

/**
 * Created by Administrator on 2015/6/2.
 */
class ServletContextScheduleListener extends ServletContextListener {
  private var cxt: ServletContext = null

  def contextDestroyed(e: ServletContextEvent) {
  }

  def contextInitialized(e: ServletContextEvent) {
    cxt = e.getServletContext

    cxt.setAttribute("ALL_URL", null)
  }

  def getServletContext: ServletContext = {
    return cxt
  }
}
