require 'mechanize'
require 'rubygems'

agent = Mechanize.new
agent.user_agent_alias = 'Mac Safari'
page = agent.get('http://www.baidu.com')

#pp page
baidu_form = page.form('f')
baidu_form.field_with(:name => 'wd').value = 'ruby'
Newpage = agent.submit(baidu_form , baidu_form.buttons.first)
pp Newpage


