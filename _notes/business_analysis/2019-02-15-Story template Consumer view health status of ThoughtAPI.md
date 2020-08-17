---
category: business analysis
---
# Story template: Consumer: view health status of ThoughtAPI

```
h2. Business Value
*As a* Consumer/Publisher/Cons-admin/Pub-admin,
*I want to* view health status metrics of ThoughtAPI,
*So that* I know the reliability of ThoughtAPI.

h2. User Journey
https://docs.google.com/presentation/d/1bZWhO-byImuy7emHsolzb5VyVK5SBt6UtVz2WvsDc70/edit#slide=id.g1c9ca5108_1270

h2. Common Knowledge
# *Role & Permission*: if not explicitly described otherwise, every functionality works the same for all user roles having permission using it. See [Permission lookup table|https://docs.google.com/spreadsheets/d/1cgtcZwBf59Yr7XZtCt_aLGcfM36Ek-BPc-6uJaLrMH0/edit#gid=0] for details.
# *Page Routing*: please follow [Page Routing Principles|https://docs.google.com/spreadsheets/d/1jYxtXSqwOxl3BY0v9iEs8GNMfu70hOXeDIqyvy-R-c8/edit#gid=501674950] if a page routing error occurs.
# *Security*: must follow [Security Guidelines|https://docs.google.com/spreadsheets/d/16rBYvFsEvN6ewTS3V4eQrCyeiifS1iw8HqDRobIXGgA/edit#gid=0].

h2. Acceptance Criteria

+AC Consumer can see all time in UTC+0 format in status page+
GIVEN Ling in ThoughtAPI status page,
THEN she can see all time in status page are in UTC+0 format.

+AC Consumer can see Current Health Status of ThoughtAPI+
GIVEN Ling in ThoughtAPI status page,
THEN she can see Current Health Status (see UI Spec) of ThoughtAPI.

+AC Consumer can interact with Current Health Status of ThoughtAPI+
GIVEN Ling in ThoughtAPI status page,
WHEN she interact (see UI Spec) with Current Health Status of ThoughtAPI,
THEN she can see Current Health Status of ThoughtAPI behave as defined in UI Spec.

+AC Consumer can see Health Status History Graph of ThoughtAPI+
GIVEN Ling in ThoughtAPI status page,
THEN she can see Health Status History Graph (see UI Spec) of ThoughtAPI.

+AC Consumer can interact with Health Status History Graph of ThoughtAPI+
GIVEN Ling in ThoughtAPI status page,
WHEN she interact (see UI Spec) with Health Status History Graph of ThoughtAPI,
THEN she can see Health Status History Graph of ThoughtAPI behave as defined in UI Spec.


h2. Definition of Terms
h3. Real Time
Current displayed status is the actual status within 60 seconds range.

h3. Current time
计算uptime percentage的代码执行的时刻

h3. Today
Day of Current time in UTC+0

h3. Past N Days
从Today之前（不包括Today）的第N-1天到Today的时间区间中的所有Single Days。
假如今天是1997年7月16日，Past 2 Days就是从1997年7月15日到1997年7月16日的时间区间。

h3. Start of Day
1997年7月16日的Start of Day为：
1997-07-16T00:00:00.00+00:00

h3. End of Day
1997年7月16日的End of Day为：
1997-07-16T23:59:59.99+00:00

h3. Single Day
对于已到达End of Day的某一天，Single Day为Start of Day到End of Day；
对于未到达End of Day的某一天，Single Day为Start of Day到Current time；

h3. Real Time Health Status
监控对象的Real Time的健康状态，包括3种状态值：
- Healthy
- Unhealthy
- Unknown

不同监控对象的健康状态的定义不一样，要case by case来看。
对于ThoughtAPI的每一个组件，3种状态值的定义为：
- Healthy: Prometheus存储的对应时刻的组件状态为Healthy
- Unhealthy: Prometheus存储的对应时刻的组件状态为Unhealthy
- Unknown: Prometheus没有存储对应时刻的组件状态值

对于ThoughtAPI，3种状态值的定义为：
- Healthy: 所有（Prometheus以外的）组件Real Time Health Status为Healthy
- Unhealthy: 至少一个组件Real Time Health Status为Unhealthy或Unknown
- Unknown: 所有组件Real Time Health Status为Unknown

对于被管理的API，3种状态值的定义为：
- Healthy: Prometheus存储的对应时刻的API状态为Healthy
- Unhealthy: Prometheus存储的对应时刻的API状态为Unhealthy
- Unknown: Prometheus没有存储对应时刻的API状态值

h3. Single Day Uptime Percentage
某Single Day中，监控对象被检查到的health的次数 / 对象被检查到的healthy + unhealthy的次数。
Uptime Percentage有3种可能：
- Valid数值: [0-100]%
- Initial: 没有加进来
- Unknown: 加进来了，但是没有任何监控数据

h3. Past 90 Days Uptime Percentage
Past 90 Days中，监控对象被检查到的health的次数 / 对象被检查到的healthy + unhealthy的次数。


h2. UI Spec
link: https://preview.uxpin.com/c8d4194e8f4122661829775772b1a94109300243#/pages/94626430/simulate/no-panels?mode=i

h3. Current Health Status

h4. Health Status Icon
显示监控对象的Real Time Health Status对应的颜色见UX Design.

h4. UI Text
{noformat}
API Gateway Status
{noformat}

{noformat}
Current Status
{noformat}

Tooltip
{noformat}
Realtime: [Healthy | Unhealthy | Unknown]
{noformat}

h4. Interaction Behaviours
鼠标hover上Health Status Icon时显示Tooltip。

h3. Health Status History Graph

h4. Health Status Bar
显示监控对象某一天的Single Day Uptime Percentage对应的颜色见UX Design.

h4. History Graph
X轴：90个Health Status Bar。每个Health Status Bar对应其中一天的Single Day Health Status。最左侧的是90天前的Single Day Health Status，最右侧的是Today的Single Day Health Status。

h4. UI Text:
{noformat}
90 days ago
{noformat}

Uptime percentage of Past 90 Days (uptime保留小数点后两位，小数点后末位0不展示), e.g. 
{noformat}
[99.99]% uptime
{noformat}

{noformat}
Today
{noformat}

Date of Single Day selected (default is Today), e.g. 
{noformat}
2019.01.03 UTC+0
{noformat}

Uptime Percentage of Single Day selected (default is Today,  uptime保留小数点后两位，小数点后末位0不展示), e.g. 
{noformat}
[99.99]%
{noformat}

h4. Interaction Behaviours
鼠标hover任何一个Single Day的Health Status Bar时：

1. 如果hover的Health Status Bar对应的Single Day Uptime Percentage为Valid数值时，
Health Status Bar样式见UX Design.

右边Single Day selected的text变为：
Date: Date of Single Day selected
Uptime Percentage: Uptime Percentage of Single Day selected

2. 如果hover的Health Status Bar对应的Single Day Uptime Percentage为Initial时，
Health Status Bar样式无变化。

右边Single Day selected的text无变化。

3. 如果hover的Health Status Bar对应的Single Day Uptime Percentage为Unknown时，
Health Status Bar样式见UX Design.

右边Single Day selected的text变为：
Date:
{noformat}
[Date of Single Day selected]
{noformat}

Uptime Percentage:
{noformat}
Unknown
{noformat}

h2. Technical Requirements:
all time related calculation in any metrics are based on UTC time
check APIGW/API health status的时间间隔：30s
Server端: 可以设置不同的时间窗，最多可提供从有数据日期开始到今天的所有数据，终止日期也可以不是今天，可以是任何日期。，提供不同时间的uptime计算

h2. Test Scenario
```
