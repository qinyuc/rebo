
class Task
        
end

class Test
    
end

class Action
    attr_accessor :cmd, :args, :name
    def exec
        cmdline = cmd + " " + args
        system(cmdline)
    end    
end

$actions = Array.new

$current_action = nil
$current_task   = nil
$current_test   = nil

def action (name)
    $current_action = action.new
    $current_action.name = name
end

def task (name)
    
end

def endtask
        
end

def cmd (str)
    $current_action.cmd = str
end

def endaction
    $actions.push($current_action)
    $current_action = nil
end

def args (str)
    $current_action.args = str
end

def main

    p ARGV

    load 'test.x'
    $actions.each do |action|
        action.exec
    end
end