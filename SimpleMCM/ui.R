#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shinydashboard)

dashboardPage(
        dashboardHeader(title="Simple Markov Cohort Model"),
        dashboardSidebar(
                sidebarMenu(
                        menuItem("How to Start", tabName = "intro", icon = icon("dashboard")),
                        menuItem("Build your model", tabName = "build", icon = icon("th")),
                        menuItem("About", tabName = "tba", icon = icon("th"))
                )
        ),
        dashboardBody(
                tabItems(
                        # First tab content
                        tabItem(tabName = "intro",
                                h2("Introduction to this Shiny App")
                                
                        ),
                        
                        # Second tab content
                        tabItem(tabName = "build",
                                h2("Build your model step by step"),
                                fluidRow(
                                        box(title="1. Define States",
                                            h2("...."),
                                            textInput("st_name","State Name:"),
                                            numericInput("st_tunnel","Tunnel Length (Non-tunnel state put 1):",1,1,20,1),
                                            actionButton("st_submit","Create a state object")
                                            ),
                                        box(title="take a look")
                                ),
                                fluidRow(
                                        box(title="2. Load parameters: options",
                                            h2("...."),
                                            tabsetPanel(
                                                    tabPanel("One Click",
                                                             textInput("p_name","Parameter Name:"),
                                                             textInput("p_value","Parameter Value:"),
                                                             textInput("p_formula","Parameter Formula:"),
                                                             actionButton("p_submit","Create a parameter object")
                                                             ),
                                                    tabPanel("Table Input",
                                                             textInput("ptb_name","Table Name:"),
                                                             h4("smart table to edit"),
                                                             actionButton("ptb_submit","Create a parameter object")
                                                             )
                                            )

                                        ),
                                        box(title="take a look")
                                ),
                                fluidRow(
                                        box(title="3. Transition Matrix",
                                            h2("...."),
                                            textInput("st_name","State Name:"),
                                            numericInput("st_tunnel","Tunnel Length (Non-tunnel state put 1):",1,1,20,1),
                                            actionButton("st_submit","Create a state object")
                                        ),
                                        box(title="take a look")
                                ),
                                fluidRow(
                                        box(title="4. Cost & Effectiveness",
                                            h2("...."),
                                            textInput("st_name","State Name:"),
                                            numericInput("st_tunnel","Tunnel Length (Non-tunnel state put 1):",1,1,20,1),
                                            actionButton("st_submit","Create a state object")
                                        ),
                                        box(title="take a look")
                                )
                        )
                ),
                actionButton("model_submit","Create your model")
        ),
        skin="black"
)
