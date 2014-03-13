execute "sudo apt-get update"

package "build-essential"
package "python"
package "python-software-properties"
package "g++"
package "make"

execute "sudo npm install -g node-gyp"

execute "npm install sqlite3 --build-from-source" do
  cwd '/apps/ghost'
end



execute "npm install --production" do
  cwd '/apps/ghost'
end
