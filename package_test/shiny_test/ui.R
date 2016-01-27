library(shiny)

shinyUI(fluidPage(
  titlePanel("上传文件"),
  sidebarLayout(
    sidebarPanel(
      # 字符串输入框
      textInput("comment", "请输入预测评论", "国美物流超慢啊!"),
      
      # hr标签
      tags$hr(),
      
      # 选择文件
      fileInput('file1','选择预测CSV文件',
                accept=c('text/csv',
                         'text/comma-separated-values,text/plain',
                         '.csv')),
      # hr标签
      tags$hr(),
      
      # 复选框
      checkboxInput('header',"读取CSV头", TRUE),
      
      # 单选按钮
      radioButtons('sep', 'csv分隔符',
                   c(逗号=',',
                     分号=';',
                     tab键='\t'),
                   ','),

      # 刷新按钮
      # submitButton("刷新", icon("refresh")),
      
      # 提交按钮
      submitButton("提交")
    ),
    mainPanel(
      # 显示后台处理后分配给前台的赋值
      tableOutput('contents'),
      tags$hr(),
      tableOutput('pinglun')
    )
  )
))