require 'mechanize'
require 'rubygems'

agent = Mechanize.new
agent.user_agent_alias = 'Mac Safari'
page = agent.get('http://login.weibo.cn/login/?')
#pp page
sina_form = page.form
#pp sina_form
sina_form.field_with(:name => 'mobile').value = 'sbph220@sina.com'
sina_form.field_with(:type => 'password').value = '***********'
Newpage = agent.submit(sina_form , sina_form.buttons.first)
pp Newpage


