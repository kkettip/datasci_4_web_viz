# datasci_4_web_viz

**1. R's Shiny Visualization**
Challenges: syntax error near unexpected token `name='kettip',' occurred when inputting code for deploying the app in R: rsconnect::setAccountInfo(name="<ACCOUNT>", token="<TOKEN>", secret="<SECRET>") and associated information in the Posit terminal or cloud shell terminal. Reason for this error is unknown as the code does not visually contain the unexpected token. It was also directly copied from shiny.io token dashboard, therefore there should be no unexpected token. Manual typing of the code lead to the same error. However the app was generated without the code in Posit that can be access with the following link: <https://posit.cloud/content/6637363>

Posit recommends packages for installation which allows for easy installation and saves users time. However, the generated bar graph did not function properly because When a different county was selected from the drop down menu, the bar graph did not display. Bar graph was only displayed for the first default county. 


**2. Python's Shiny Visualization**
Challenges: An error prevented deployment of shiny app in python. A portion of the error states Application deployment failed with error: Unhandled Exception: Child Task ... failed: Error building image ... which prevented deployment of shiny with python. Adding a requirements.txt removed the error. The site for the python shiny app: <https://kettip.shinyapps.io/obesity/>

The bar graph height did not have a dash line for the bar height of the county as seen with the graph using Flask. But the graph provided a display of the percentage while the graph using Flask does not.


**3. Flask with Matplotlib Visualization**
No challenges were encountered with Flask with Matplotlib Visualization.
The app was easily generated using the terminal and the graph functioned as intended.

The code in R is similar to the code in python, which allows one to easily understand the purpose of the code between the 2 different languages.