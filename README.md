# E-Commerce Application

This is a sample Spring Boot project demonstrating an e-commerce application with user authentication, password reset via email, and a modern UI using Tailwind CSS.

## Prerequisites

- Java 8 or higher
- Maven
- Gmail account for sending emails (enable less secure app access or use app-specific password)

## Getting Started

1. **Clone the Repository**

   ```sh
   git clone https://github.com/Sahilumraniya/Ecom-spring-boot
    cd Ecom-spring-boot
    mvn clean install
    mvn spring-boot:run
    ```

2. **Configure Gmail**

   Open `src/main/resources/application.properties` and add your Gmail username and password.

   ```properties

    # Server
    spring.application.name=ecom
    server.port=8888

    # View
    spring.mvc.view.prefix=/WEB-INF/views/
    spring.mvc.view.suffix=.jsp

    # Database
    spring.datasource.url=jdbc:mysql://localhost:3306/ecomapp
    spring.datasource.username=root
    spring.datasource.password=root

    # Email Configuration
    spring.mail.host=smtp.gmail.com
    spring.mail.port=587
    spring.mail.username=your-email@gmail.com
    spring.mail.password=your-password
    spring.mail.properties.mail.smtp.auth=true
    spring.mail.properties.mail.smtp.starttls.enable=true
    ```

3. **Run the Application**

    The application will be accessible at `http://localhost:8080`.

4. **Default Credentials**
    
        - Admin: `admin@gmail.com` `admin@12345`
        - User: `sahil@gmail.com` `12345`

## Built With

- Spring Boot
- Tailwind CSS

## License

Distributed under the MIT License. See `LICENSE` for more information.


## Acknowledgements

- [Spring Boot](https://spring.io/projects/spring-boot)

- [Tailwind CSS](https://tailwindcss.com/)

- [Unsplash](https://unsplash.com/)
