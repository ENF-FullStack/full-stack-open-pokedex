
Mid-size application, made with Java

Common steps in CI setup? Specific tools?

Configuring CI/CD to poll changes or setup Webhook to notify developer pushes.
Commit triggering in pipeline will be checked out by CI server.
CI tool needs access to build tools to compile code, Maven or Gradle are commonly used.
Docker containers allow fresh build environments easily and repeatedly.

a. Linting

For linting in Java, you can use either proper Java IDE with built-in-tools like IntelliJ, Netbeans or Eclipse.
Or you can configure IDE like VSCode and use common plugins to enforce code standards.

Checkstyle is one of the most commonly used code formatters. Adding Prettier plugin configuration to
VSCode makes easy on-fly linting. Also checkstyle can be extended to include filters, checks and listeners.

Checkstyle: https://checkstyle.sourceforge.io
Checkstyle + Prettier plugin, configuration: 
https://github.com/jhipster/prettier-java/blob/main/docs/checkstyle/checkstyle.xml

b. Testing

Maven or Gradle. Bulk of the tests should be unit tests, are easy to write, cheap to run and low in cost.

After building, acceptance tests ensure app meets original requirements. Using automated acceptance test tools
like Cucumber or Selenium to simulate user actions is recommended.

c. Building

Once tests have passed, code can be packaged to build JAR file or Docker image. Build binary only once, don't
build binary for each environment to reduce complexity.

Alternatives to setup CI (not Jenkins or Github Actions):

Travis CI
Circle CI
Codeship
TeamCity
Bamboo
Gitlabs Integrated CI
Shippable
Buildkite

Better to go self-hosted or cloud-based service? Why?
What information would one need to make that decision?

Self-hosted.

1. Scale

As the application is mid-sized and has no need to scale rapidly, self-hosted solution works here better.

2. Internet connection

If application is required to be available offline, self-hosted gives access to users.

3. Security

Self-hosted application provides more control over security. Firewall, staff.

4. Maintenance

Small team with sufficient technical expertise to allow work with customer support team works better with self-hosting.
