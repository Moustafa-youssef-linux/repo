#
# Description: this method is designed to prepare the request initiated by the user
# Author: Moustafa Youssef
# E-mail: moustafa.youssef@glinux-plus.com
#

@debug=1
@method="PrepareRequest"
@handle=$evm

 def logInfo(msg)
    @handle.log('info', "#{@method}: " + msg.to_s) if @debug
  end

request = $evm.root['service_template_provision_task']
@reqopts = request.options[:dialog]
if request
    logInfo("the dialog inputs: #{@reqopts}")
end
logInfo("The Auotmate method :#{@method} has got started")
vm_name = $evm.root['dialog_machine_name']
vm_ip = $evm.root['dialog_machine_ip']
vm_num = $evm.root['dialog_vm_number']
#vm_app = $evm.root['dialog_app']
vm_app = 'DB'
logInfo("the dialog inputs: #{@reqopts}")
logInfo("the vm name: #{vm_name}")
logInfo("the vm ip: #{vm_ip}")
logInfo("the vm number: #{vm_num}")
counter = vm_num
c = counter.to_i
max_num = c
arr_host = []
#arr_ip = []
whole_arr = []
while c >= 1 && c <= max_num 
  if c == 1
   derived_name = "#{vm_name}"
   arr_host = []
   arr_host << derived_name
   #arr_ip = vm_ip.split('.')
   arr_host << "#{vm_ip}"
   whole_arr << arr_host
 
  else 
  if    c == 2
         prefix = c
         prefix.to_s
         derived_name = "#{vm_name}#{vm_app}#{prefix}"
         arr_host = []
         arr_host << derived_name
         arr_ip = vm_ip.split('.')
         last_oct = arr_ip[3]
         last_oct = last_oct.to_i
         last_oct = last_oct + 1
         arr_ip[3] = last_oct.to_s
         vm_ip = arr_ip.join('.')
         arr_host << vm_ip
         whole_arr << arr_host
              

   else
    if  
         c == 3
         prefix = c
         prefix.to_s
         derived_name = "#{vm_name}#{vm_app}#{prefix}"
         arr_name << derived_name
  end
 end
end
  c = c - 1
end



vm_name = derived_name
$evm.root['dialog_machine_name'] = vm_name
logInfo("After the population.......")
logInfo("the vm name: #{vm_name}")
logInfo("the array of names : #{whole_arr}")
