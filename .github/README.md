# [Dockerizing Oppia](https://www.oppia.org) [![Actions](https://github.com/oppia/oppia/workflows/End-to-End%20tests/badge.svg?branch=develop)](https://github.com/oppia/oppia/actions?query=branch%3Adevelop+workflow%3A%22End-to-End+tests%22) 

## Execution of the Dockerized Oppia prototype on different Platforms
### mac M1
 - Screen recording for the development server
https://user-images.githubusercontent.com/91013793/228456824-abb473a3-5052-4627-87e5-f8964a6dc1b5.mov

 - `make install-dependencies` -->
<img width="1440" alt="Screenshot 2023-03-27 at 10 30 47 AM" src="https://user-images.githubusercontent.com/91013793/228456517-3f91a312-c021-41ef-8b2c-9a7a1b603e49.png">

 - `make run` -->
<img width="1440" alt="Screenshot 2023-03-27 at 10 59 54 AM" src="https://user-images.githubusercontent.com/91013793/228456915-1ba3f7ef-28da-481b-b4a3-5413bb76bb06.png">


### Linux - ubuntu 22.04
 - Screen recording for the development server
 [Screencast from 29-03-23 02:34:38 AM IST.webm](https://user-images.githubusercontent.com/91013793/228457187-10f79a62-33d4-4c8b-b82e-bfed8f960184.webm)

 - `make install-dependencies` -->
 ![WhatsApp Image 2023-03-29 at 12 18 08 PM](https://user-images.githubusercontent.com/91013793/228457263-6fa697b7-f98f-4f36-873a-633cb95fb35f.jpeg)
 
  - `make run` -->
 ![WhatsApp Image 2023-03-29 at 12 18 07 PM](https://user-images.githubusercontent.com/91013793/228457317-556a5267-48bb-48ef-a77a-c56e8129998d.jpeg)
 
 
 ### Windows 11
  - Screen recording for the development server
https://user-images.githubusercontent.com/91013793/228457437-688e4849-b712-413f-b6cf-707381f45942.mp4

- `make run` -->
![WhatsApp Image 2023-03-28 at 12 10 28 PM](https://user-images.githubusercontent.com/91013793/228457532-19521164-7586-40e6-b8b9-9cb278b812fe.jpeg)

 - logs of the development server under Docker 
 ![WhatsApp Image 2023-03-28 at 12 11 25 PM](https://user-images.githubusercontent.com/91013793/228457699-18fc5ea1-36ae-4e71-8eaa-399ad67df289.jpeg)



## Updated -->
Now, I have packed up the application within the Docker containers, and all the pages are rendering within the containerized application, in which all the dependency installation and configuration is handled within the `webserver` container. Since, I have not started the firebase-emulator auth servie in the docker-compose file, the login is giving error but this will be fixed by configuring the firebase (in a separate dockerfile, building and setting up in docker-compose.yml file)

https://user-images.githubusercontent.com/91013793/227344282-e602d610-a4a6-4946-b342-b689d72fecae.mov

## NOTE:
I have used the pre-built webpack bundles of the files, and the already installed services from the /oppia-tools directory in this prototype, just add the RUN command in the `webserver dockerfile` to do the webpack compilations... 
#### but all these things I can handle care within the GSoC coding period because they are intended to do during GSoC, not already before GSoC in the name of Prototype :)



## Initial
This is the initial prototype for dockerizing oppia -->
 installing dependencies and rendering the FE application. Although, in the master branch, the docker containerized app is binded with the host as same `get` request seen in both docker container (using `exec`) and in the host -- using `curl -L localhost:4200`

<img width="1440" alt="Screenshot 2023-03-19 at 12 15 31 AM" src="https://user-images.githubusercontent.com/91013793/226129867-1d869eb2-0345-4f90-bb14-72ff38378717.png">
<img width="1440" alt="Screenshot 2023-03-19 at 12 15 48 AM" src="https://user-images.githubusercontent.com/91013793/226129877-cf4d6182-74a1-4964-b238-2997b5630334.png">
<img width="1440" alt="Screenshot 2023-03-19 at 12 16 38 AM" src="https://user-images.githubusercontent.com/91013793/226129921-a8bf8132-b5e1-44e5-90f7-58e328f2eeb4.png">
<img width="1440" alt="Screenshot 2023-03-19 at 12 17 20 AM" src="https://user-images.githubusercontent.com/91013793/226129953-cf1a2876-2395-46a5-96fe-0dcd6ebebfb2.png">
<img width="1440" alt="Screenshot 2023-03-19 at 12 17 25 AM" src="https://user-images.githubusercontent.com/91013793/226129962-13bf56fc-d51b-441e-ba0f-bf9a0d2a35f2.png">
