package com.t2t.top.app.example

/**
 * Created by Administrator on 2015/3/23.
 */

import java.io.File

import scala.swing._
import scala.swing.event.ButtonClicked

object SimpleApp extends SimpleSwingApplication {
  val chooser = new FileChooser(new File("."))
  chooser.title = "chooser"
  val button = new Button {
    text = "Choose a File"
  }
  val label = new Label {
    text = "No file selected yet."
  }
  val mainPanel = new FlowPanel {
    contents += button
    contents += label
  }

  def top = new MainFrame {
    title = "Simple GUI"
    contents = mainPanel

    listenTo(button)

    reactions += {
      case ButtonClicked(b) => {
        val result = chooser.showOpenDialog(mainPanel)
        if (result == FileChooser.Result.Approve) {
          label.text = chooser.selectedFile.getPath()
        }
      }
    }
  }
}