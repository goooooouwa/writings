---
category: business analysis
---
# story template (bv, journey, mockup, ui, ac, ts)

```
h2. Business Value
 !Feng Admin.png|thumbnail! 
*As a* ,
*I want to* ,
*So that* .

h2. User Journey
https://docs.google.com/presentation/d/1bZWhO-byImuy7emHsolzb5VyVK5SBt6UtVz2WvsDc70/edit#slide=id.g1c9ca5108_1270

h2. Common Knowledge
# *Role & Permission*: if not explicitly described otherwise, every functionality works the same for all user roles having permission using it. See [Permission lookup table|https://docs.google.com/spreadsheets/d/1cgtcZwBf59Yr7XZtCt_aLGcfM36Ek-BPc-6uJaLrMH0/edit#gid=0] for details.
# *Page Routing*: please follow [Page Routing Principles|https://docs.google.com/spreadsheets/d/1jYxtXSqwOxl3BY0v9iEs8GNMfu70hOXeDIqyvy-R-c8/edit#gid=501674950] if a page routing error occurs.
# *Security*: must follow [Security Guidelines|https://docs.google.com/spreadsheets/d/16rBYvFsEvN6ewTS3V4eQrCyeiifS1iw8HqDRobIXGgA/edit#gid=0].

h2. Acceptance Criteria

+AC +
GIVEN  ,
WHEN  ,
THEN .

*THEN* the product will be deleted,
* the delete icon and cancel is disabled,
* a loading animation appears,
* she can NOT click anything,

*AND* if the operation is successful, she can see a SUCCESS_BANNER_MESSAGE (see UI Spec) in header,
* the related OKTA app is immediately deleted from OKTA,
* the Deletion Confirmation Window is closed,
* the product disappears from the product list,

*AND* if the operation is failed due to 5XX error, she can see a 5XX_FAILURE_BANNER_MESSAGE (see UI Spec) in header,
* the Deletion Confirmation Window is closed,
* the product is still in product list,
* the delete icon is enabled,

*AND* if the operation is failed due to 404 error, she can see a 404_NOT_FOUND_ERROR_BANNER_MESSAGE (see UI Spec) in header,
* the page is refreshed without interrupting the error message,
* the product is NOT in product list.

h2. UI Spec
link: https://preview.uxpin.com/c8d4194e8f4122661829775772b1a94109300243#/pages/94626430/simulate/no-panels?mode=i

h3. UI
*Button disable effect*
* button color becomes light gray,
* button not clickable,
* if mouse hover, mouse icon turn into forbidden sign.

h3. Text
PLACEHOLDER 
{noformat}
type here...
{noformat}

SUCCESS_BANNER_MESSAGE
{noformat}
Save successful
{noformat}

404_FAILURE_BANNER_MESSAGE
{noformat}
The resource is not found
{noformat}

5XX_FAILURE_BANNER_MESSAGE
{noformat}
Something is wrong, please try again later
{noformat}

NAME_CONFLICT_ERROR_MESSAGE
{noformat}
Name already exists
{noformat}

NAME_CONFLICT_ERROR_MESSAGE
{noformat}
empty can not be empty
{noformat}







思考

边界情况
按钮重复点击，禁用规则。
输入框验证规则（长度限制，唯一性，接受字符），输入错误的所有可能性，错误消息文案。
错误消息的长度控制。

前台操作时，后台数据变化，该如何处理？（比如试图操作的对象已被操作，之前未出现的对象已出现）

界面组件在不同最小和最大屏幕尺寸下的显示效果。界面组件对动态内容显示的限制。用户输入内容（或其他动态数据）显示时最大可能长度的判断，宽度是否足够，是否换行。界面组件最大长宽高是多少？内容是否会超出？超出怎么处理？

界面组件的动作效果，有哪些可能的状态，有哪些非常规的界面组件的操作，分别该如何处理？

回退按钮规则。tab间切换时页面状态是否保持。
访问被删除的资源如何处理？操作（编辑、删除等）被删除的资源如何处理？
同时开两个同样的页面进行相同的操作（并发），该怎样处理？
关联资源的影响，如何处理？
有多少请求，每个请求有哪些可能的错误，每种错误该如何处理？（能否有general solution cover通用错误？）提交后页面刷新时，错误消息的显示方式。
哪些请求会比较慢，加loading

请求背后会跟哪些内部组件打交道？kong, Nginx, k8s, ingress? 这些内部组件有哪些特性？限制？

请求背后会跟哪些外部系统打交道？OKTA, jigsaw, finance, legal? 这些外部系统有哪些特性？限制？

变量

设备
屏幕尺寸
用户
角色
国家
文化
语言
时区
使用环境（物理，网络等）

```
