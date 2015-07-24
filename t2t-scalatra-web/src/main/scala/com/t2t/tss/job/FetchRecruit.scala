package com.t2t.tss.job

import java.text.SimpleDateFormat

import org.joda.time._

import scala.io.Source

/**
 * Created by ypf on 2015/6/5.
 */
object FetchRecruit {

  def main(args: Array[String]) {
    print("spark")
    print("java")
    print("c++")
  }

  def print(key: String): Unit = {
    var value = ""
    val url = "http://opendata.baidu.com/zhaopin/s?wd=" + key + "&rn=18&p=mini&style=list&type="
    val p = "为您找到.*?个相关职位".r
    Source.fromURL(url).getLines().foreach(op => {
      val r = p.findFirstIn(op)
      if (r.isDefined) value = r.get;
    }
    )
    val sdf = new SimpleDateFormat("yyyy-MM-dd H:mm:ss")
    println(key + " = " + sdf.format(DateTime.now.toDate) + " = " + value)
  }


}
