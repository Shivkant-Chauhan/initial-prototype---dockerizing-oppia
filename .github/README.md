# [Dockerizing Oppia](https://www.oppia.org) [![Actions](https://github.com/oppia/oppia/workflows/End-to-End%20tests/badge.svg?branch=develop)](https://github.com/oppia/oppia/actions?query=branch%3Adevelop+workflow%3A%22End-to-End+tests%22) 


## Updated -->
Now, I have packed up the application within the Docker containers, and all the pages are rendering within the containerized application, in which all the dependency installation and configuration is handled within the `webserver` container. Since, I have not started the firebase-emulator auth servie in the docker-compose file, the login is giving error but this will be fixed by configuring the firebase (in a separate dockerfile, building and setting up in docker-compose.yml file)

https://user-images.githubusercontent.com/91013793/227344282-e602d610-a4a6-4946-b342-b689d72fecae.mov

Also NOTE: I have used the pre-built webpack bundles of the files in this prototype, just add the RUN command in the `webserver dockerfile` to do the webpack compilations...




## Initial
This is the initial prototype for dockerizing oppia -->
 installing dependencies and rendering the FE application. Although, in the master branch, the docker containerized app is binded with the host as same `get` request seen in both docker container (using `exec`) and in the host -- using `curl -L localhost:4200`

<img width="1440" alt="Screenshot 2023-03-19 at 12 15 31 AM" src="https://user-images.githubusercontent.com/91013793/226129867-1d869eb2-0345-4f90-bb14-72ff38378717.png">
<img width="1440" alt="Screenshot 2023-03-19 at 12 15 48 AM" src="https://user-images.githubusercontent.com/91013793/226129877-cf4d6182-74a1-4964-b238-2997b5630334.png">
<img width="1440" alt="Screenshot 2023-03-19 at 12 16 38 AM" src="https://user-images.githubusercontent.com/91013793/226129921-a8bf8132-b5e1-44e5-90f7-58e328f2eeb4.png">
<img width="1440" alt="Screenshot 2023-03-19 at 12 17 20 AM" src="https://user-images.githubusercontent.com/91013793/226129953-cf1a2876-2395-46a5-96fe-0dcd6ebebfb2.png">
<img width="1440" alt="Screenshot 2023-03-19 at 12 17 25 AM" src="https://user-images.githubusercontent.com/91013793/226129962-13bf56fc-d51b-441e-ba0f-bf9a0d2a35f2.png">
