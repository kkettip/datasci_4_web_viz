# datasci_4_web_viz

**1. R's Shiny Visualization**
Challenges: syntax error near unexpected token `name='kettip',' occurred when inputting code for deploying the app in R: rsconnect::setAccountInfo(name="<ACCOUNT>", token="<TOKEN>", secret="<SECRET>") aith associated information. Reason for this error is unknown as the code does not visually contain the unexpected token. It was also directly copied from shiny.io token dashboard, therefore there should be no unexpected token. Manual typing of the code lead to the same error. Due to this error the R shiny app was not deployed. However the app was generated in Posit that can be access with the following link: <https://posit.cloud/content/6637363>

**2. Python's Shiny Visualization**
Challenges: An error prevented deployment of shiny app in python. A portion of the error states Application deployment failed with error: Unhandled Exception: Child Task ... failed: Error building image ... which prevented deployment of shiny with python. Adding a requirements.txt removed the error. The site for the python shiny app: <https://kettip.shinyapps.io/obesity/>

**3. Flask with Matplotlib Visualization**