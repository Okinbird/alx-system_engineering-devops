##  0x19. Postmortem

[![Postmortem](https://github.com/Okinbird/alx-system_engineering-devops/blob/master/0x19-postmortem/postmortem.gif)

As we described in a previous project 0x05. AirBnB clone - RESTful API, earlier this week we experienced an outage in our API infrastructure. Today we’re providing an incident report that details the nature of the outage and our response.

The following is the incident report for the AirBnB API infrastructure outage that occurred on Feburary 16, 2023. We understand this service issue has impacted our valued developers and users, and we apologize to everyone who was affected.

#  Issue Summary

From 9:00 PM to 10:00 PM GMT, requests to most AirBnB APIs resulted in 500 error response messages. Other projects that rely on these APIs also returned errors or had reduced functionality. At its peak, the issue affected 100% of traffic to this API infrastructure. Users could continue to access certain APIs that run on separate infrastructures. The root cause of this outage was an invalid configuration change that exposed a bug in a widely used internal place search.

#  Timeline (all times Greenwich Mean Time)

    9:19 PM: Configuration push begins
    9:26 PM: Outage begins
    9:26 PM: Pagers alerted teams
    9:54 PM: Failed configuration change rollback
    10:15 PM: Successful configuration change rollback
    10:19 PM: Server restarts begin
    10:58 PM: 100% of traffic back online

#  Root Cause

At 9:19 PM GMT, a configuration change was inadvertently released to our production environment without first being released to the testing enviroment. The change specified an invalid address for the authentication servers in production. This exposed a bug in the authentication libraries which caused them to block permanently while attempting to resolve the invalid address to physical services. In addition, the internal monitoring systems permanently blocked on this call to the authentication library search. The combination of the bug and configuration error quickly caused all of the serving threads to be consumed. Traffic was permanently queued waiting for a serving thread to become available. The servers began repeatedly hanging and restarting as they attempted to recover and at 9:26 PM GMT, the service outage began.

#  Resolution and recovery

At 9:26 PM GMT, the monitoring systems alerted our engineers who investigated and quickly escalated the issue. By 9:40 PM, the incident response team identified that the monitoring system was exacerbating the problem caused by this bug.

At 9:54 PM, we attempted to rollback the problematic configuration change. This rollback failed due to complexity in the configuration system which caused our security checks to reject the rollback. These problems were addressed and we successfully rolled back at 10:15 PM.

Some jobs started to slowly recover, and we determined that the overall recovery would be faster by a restart of all of the API infrastructure servers of the AirBnB projects. To help with the recovery, we turned off some of our monitoring systems which were triggering the bug. As a result, we decided to restart servers gradually (at 10:19 PM), to avoid possible cascading failures from a wide scale restart. By 10:49 PM, 25% of traffic was restored and 100% of traffic was routed to the API infrastructure at 10:58 PM.

#  Corrective and Preventative Measures

In the last two days, we’ve conducted an internal review and analysis of the outage. The following are actions we are taking to address the underlying causes of the issue and to help prevent recurrence and improve response times:

*   Disable the current configuration release mechanism until safer measures are implemented. (Completed.)
*   Change rollback process to be quicker and more robust.
*   Fix the underlying authentication libraries and monitoring to correctly timeout/interrupt on errors.
*   Programmatically enforce staged rollouts of all configuration changes.
*   Improve process for auditing all high-risk configuration options.
*   Add a faster rollback mechanism and improve the traffic ramp-up process, so any future problems of this type can be corrected quickly.
*   Develop better mechanism for quickly delivering status notifications during incidents.

AirBnB developers are  committed to continually and quickly improving our technology and operational processes to prevent outages. We appreciate your patience and again apologize for the impact to you, your users, and your organization. We thank you for your business and continued support.

Sincerely,

The ALX AirBnB Infrastructure Team