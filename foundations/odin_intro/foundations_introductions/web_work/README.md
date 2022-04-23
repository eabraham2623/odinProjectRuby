# How Does The Web Work
## How does the internet work?
---
* Internet is infrastructure
* Web is a service built on top of infrastructure
    * other services include Email and Chat
* Intranet private network
* Extranet, open all or part of a private network
    * ![](https://developer.mozilla.org/en-US/docs/Learn/Common_questions/How_does_the_Internet_work/internet-schema-8.png)
* ![](https://developer.mozilla.org/en-US/docs/Learn/Common_questions/How_does_the_Internet_work/internet-schema-7.png)
    * Letters are devices
    * Router connects devices
    * Router Connects to the Modem, which access the telephone infrastructure
    * Modem connects to ISP
    * ISP connects to other ISPs and Networks
* Client requests for services through web
* Servers provide services to client

## What is the Difference between webpage, webiste, web server, and search engine
---
* Web page, document displayed in a web browser
    * html
    * look and feel
    * interactivity
    * media
* Website, collection of web pages group together
    * 
* Web server, computer that hosts a website on internet
    * can host multipe websites
* Search engine, helps finds other web pages
* HTTP - defines language for clients and servers to speak to each other

# Knowledge check

* A network is group of devices connected through router 
* Internet is the infrastructure responsible for connecting devices via a global network
* IP address is the address of a host, it is unique to it
* Router is a device that allows other devices with each other without having the devices being directly connected
* ISP is the service that allows devices to connect to other devices outside of their network
* Packets are small chunks of data sent through connections
* Clients are requesters of servicees in the internet
* Servers store components and provides services to clients
* Web page is a document shown in a web browser
* Web server is a host that stores the website
* Web browser is software that allows you view websites
* Search engine allows you to query for other websites
* DNS request is how a host can retrieve an IP address by its domain name
* When I request google.com, I go to my name server and name server checks to see if it knows. It doesn't, but it does know the root name server. The root name server doesn't know, but it know "com" name  servers are. TLD (com) server knows where the authoriative name server is for google.com, using the registrar. Authoritative name server knows where it is and then sends the IP back to the client