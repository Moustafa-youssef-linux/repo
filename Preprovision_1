#
# Description: This method prepares arguments and parameters for a job template
#
module ManageIQ
  module Automate
    module AutomationManagement
      module AnsibleTower
        module Service
          module Provisioning
            module StateMachines
              module Provision
                class Preprovision
                  def initialize(handle = $evm)
                    @handle = handle
                  end

                  def main
                    @handle.log("info", "Starting Ansible Tower Pre-Provisioning")
                    examine_request(service)
                    modify_job_options(service)
                  end

                  def task
                    @handle.root["service_template_provision_task"].tap do |task|
                      raise "service_template_provision_task not found" unless task
                    end
                  end

                  def service
                    task.destination.tap do |service|
                      raise "service is not of type AnsibleTower" unless service.respond_to?(:job_template)
                    end
                  end

                  # Through service you can examine the job template, configuration manager (i.e., provider)
                  # and options to start a job
                  def examine_request(service)
                    @handle.log("info", "manager = #{service.configuration_manager.name}")
                    @handle.log("info", "template = #{service.job_template.name}")

                    # Caution: job options may contain passwords.
                    # @handle.log("info", "job options = #{service.job_options.inspect}")
                  end
                  def Modify_Hosts
                    #goo
                  end
                  def Getting_Hosts
                    #goo
                    request = $evm.root['service_template_provision_task'].miq_request
                    @reqopts = request.options[:dialog]
                    if request
                       @handle.log("info", "the inputs are: #{@reqopts} ")
                    end
                    @method = 'PreProvision'
                    @handle.log("info", "The Auotmate method :#{@method} is getting the inputs")
                    vm_name = @reqopts['dialog_param_vm_name']
                    vm_ip = @reqopts['dialog_param_vm_ip']
                    vm_num = @reqopts['dialog_param_vm_number']
                    vm_app = @reqopts['dialog_application']
                    vm_project = @reqopts['dialog_project']
                    ram_1 = @reqopts['dialog_param_host_memory_1']
                    ram_2 = @reqopts['dialog_param_host_memory_2']
                    ram_3 = @reqopts['dialog_param_host_memory_3']
                    ram_4 = @reqopts['dialog_param_host_memory_4']
                    ram_5 = @reqopts['dialog_param_host_memory_5']
                    cpu_1 = @reqopts['dialog_param_host_cpu_1']
                    cpu_2 = @reqopts['dialog_param_host_cpu_2']
                    cpu_3 = @reqopts['dialog_param_host_cpu_3']
                    cpu_4 = @reqopts['dialog_param_host_cpu_4']
                    cpu_5 = @reqopts['dialog_param_host_cpu_5']
                    network_1 = @reqopts['dialog_param_host_networkname_1']
                    network_2 = @reqopts['dialog_param_host_networkname_2']
                    network_3 = @reqopts['dialog_param_host_networkname_3']
                    network_4 = @reqopts['dialog_param_host_networkname_4']
                    network_5 = @reqopts['dialog_param_host_networkname_5']
                    #vm_app = 'DB'
                    #logInfo("the dialog inputs: #{@reqopts}")
                    #logInfo("the vm name: #{vm_name}")
                    #logInfo("the vm ip: #{vm_ip}")
                    #logInfo("the vm number: #{vm_num}")
                    @handle.log("info", "the vm name: #{vm_name}")
                    @handle.log("info", "the vm ip: #{vm_ip}")
                    @handle.log("info", "the vm number: #{vm_num}")
                    
                    #the logic is starting
                    counter = vm_num
                    c = counter.to_i
                    max_num = c
                    arr_host = []
                    #arr_ip = []
                    whole_arr = []
                    whole_arr_modify = []
                    while c >= 1 && c <= max_num 
                       if c == 1
                           prefix = c
                           prefix.to_s
                           derived_name = "#{vm_name}_#{vm_project}_#{vm_app}_#{prefix}"
                           arr_host = []
                           arr_modify=[]
                           arr_modify << derived_name
                           if ram_1
                             arr_modify << ram_1
                             else
                             @handle.log("info", "no RAM assigned for vm one: #{ram_1}")
                           end
                           if cpu_1
                             arr_modify << cpu_1
                             else
                             @handle.log("info", "no CPU assigned for vm one: #{cpu_1}")
                           end
                           if network_1
                             arr_modify << network_1
                             else
                             @handle.log("info", "no NETWORK assigned for vm one: #{network_1}")
                           end
                           arr_host << derived_name
                           #arr_ip = vm_ip.split('.')
                           arr_host << "#{vm_ip}"
                           whole_arr << arr_host
                           whole_arr_modify << arr_modify
 
                       else 
                        if    c == 2
                            prefix = c
                            prefix.to_s
                            derived_name = "#{vm_name}_#{vm_project}_#{vm_app}_#{prefix}"
                            arr_host = []
                            arr_modify = []
                            arr_host << derived_name
                            arr_ip = vm_ip.split('.')
                            last_oct = arr_ip[3]
                            last_oct = last_oct.to_i
                            l = c - 1
                            last_oct = last_oct + l
                            arr_ip[3] = last_oct.to_s
                            new_ip = []
                            new_ip = arr_ip.join('.')
                            arr_host << new_ip
                            whole_arr << arr_host
                            #......modifying
                            arr_modify=[]
                            arr_modify << derived_name
                            if ram_2
                              arr_modify << ram_2
                              else
                              @handle.log("info", "no RAM assigned for vm one: #{ram_2}")
                            end
                            if cpu_2
                              arr_modify << cpu_2
                              else
                              @handle.log("info", "no CPU assigned for vm one: #{cpu_2}")
                            end
                            if network_2
                              arr_modify << network_2
                              else
                              @handle.log("info", "no NETWORK assigned for vm one: #{network_2}")
                            end
                            whole_arr_modify << arr_modify

                        else
                           if  c == 3
                               prefix = c
                               prefix.to_s
                               derived_name = "#{vm_name}_#{vm_project}_#{vm_app}_#{prefix}"
                               arr_host = []
                               arr_host << derived_name
                               arr_ip = vm_ip.split('.')
                               last_oct = arr_ip[3]
                               last_oct = last_oct.to_i
                               l = c - 1
                               last_oct = last_oct + l
                               arr_ip[3] = last_oct.to_s
                               new_ip = []
                               new_ip = arr_ip.join('.')
                               arr_host << new_ip
                               whole_arr << arr_host 
                               #......modifying
                               arr_modify=[]
                               arr_modify << derived_name
                               if ram_3
                                 arr_modify << ram_3
                                else
                                  @handle.log("info", "no RAM assigned for vm one: #{ram_3}")
                                end
                               if cpu_3
                                 arr_modify << cpu_3
                                 else
                                   @handle.log("info", "no CPU assigned for vm one: #{cpu_3}")
                                end
                                if network_3
                                   arr_modify << network_3
                                  else
                                     @handle.log("info", "no NETWORK assigned for vm one: #{network_3}")
                                end
                                     whole_arr_modify << arr_modify
                         else
                           if  c == 4
                               prefix = c
                               prefix.to_s
                               derived_name = "#{vm_name}_#{vm_project}_#{vm_app}_#{prefix}"
                               arr_host = []
                               arr_host << derived_name
                               arr_ip = vm_ip.split('.')
                               last_oct = arr_ip[3]
                               last_oct = last_oct.to_i
                               l = c - 1
                               last_oct = last_oct + l
                               arr_ip[3] = last_oct.to_s
                               new_ip = []
                               new_ip = arr_ip.join('.')
                               arr_host << new_ip
                               whole_arr << arr_host
                               #......modifying
                               arr_modify=[]
                               arr_modify << derived_name
                               if ram_4
                                  arr_modify << ram_4
                                else
                                  @handle.log("info", "no RAM assigned for vm one: #{ram_4}")
                               end
                               if cpu_4
                                  arr_modify << cpu_4
                                else
                                  @handle.log("info", "no CPU assigned for vm one: #{cpu_4}")
                               end
                               if network_4
                                  arr_modify << network_4
                                 else
                                   @handle.log("info", "no NETWORK assigned for vm one: #{network_4}")
                               end
                               whole_arr_modify << arr_modify
         
                         else
                            if  c == 5
                                 prefix = c
                                 prefix.to_s
                                 derived_name = "#{vm_name}_#{vm_project}_#{vm_app}_#{prefix}"
                                 arr_host = []
                                 arr_host << derived_name
                                 arr_ip = vm_ip.split('.')
                                 last_oct = arr_ip[3]
                                 last_oct = last_oct.to_i
                                 l = c - 1
                                 last_oct = last_oct + l
                                 arr_ip[3] = last_oct.to_s
                                 new_ip = []
                                 new_ip = arr_ip.join('.')
                                 arr_host << new_ip
                                 whole_arr << arr_host 
                                 #......modifying
                                 arr_modify=[]
                                 arr_modify << derived_name
                                 if ram_2
                                    arr_modify << ram_2
                                  else
                                    @handle.log("info", "no RAM assigned for vm one: #{ram_2}")
                                 end
                                 if cpu_2
                                    arr_modify << cpu_2
                                 else
                                      @handle.log("info", "no CPU assigned for vm one: #{cpu_2}")
                                 end
                                 if network_2
                                      arr_modify << network_2
                                  else
                                      @handle.log("info", "no NETWORK assigned for vm one: #{network_2}")
                                 end
                                 whole_arr_modify << arr_modify
         
                       end
                     end
                   end
                  end
                end
             c = c - 1
               end
              return whole_arr,whole_arr_modify
             end
                  # You can also override job options through service
                  def modify_job_options(service)
                    # Example how to programmatically modify job options:
                    job_options = service.job_options
                    #job_options[:limit] = 'someHost'
                    #job_options[:extra_vars]['flavor'] = 'm1.small'
                    @hosts,@modify = Getting_Hosts()
                    
                    #@the_list = $evm.root['dialog_mylist']
                    job_options[:extra_vars]['mylist'] = @hosts
                    job_options[:extra_vars]['list'] = @modify
                    # Important: set stack_options
                    #@reqopts = @handle.root['dialog*']
                    #@handle.log("info", "the inputs are: #{@reqopts} ")
                    #vm_name = $evm.root['dialog_param_vm_name']
                    #@handle.log("info", "the vm name is: #{vm_name} ")
                    #job_options[:extra_vars]['name_host'] = vm_name
                    #@handle.log("info", "Starting Ansible Tower Pre-Provisioning")
                    service.job_options = job_options
                    @options = service.job_options[:extra_vars]
                    @handle.log("info", "the options are: #{@options} ")
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end
if __FILE__ == $PROGRAM_NAME
  ManageIQ::Automate::AutomationManagement::AnsibleTower::Service::Provisioning::StateMachines::Provision::Preprovision.new.main
end
