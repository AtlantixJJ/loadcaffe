package = "loadcaffe"
version = "1.0-0"

source = {
   url = "git://github.com/szagoruyko/loadcaffe",
   tag = "master"
}

description = {
   summary = "Load Caffe networks in Torch7",
   detailed = [[
Loading Caffe networks without caffe dependency
   ]],
   homepage = "https://github.com/AtlantixJJ/loadcaffe",
   license = "BSD"
}

dependencies = {
   "torch >= 7.0",
   "nn"
}

build = {
   type = "command",
   build_command = [[
INCLUDE=/home/xujianjing/usr/local/include LIB=/home/xujianjing/usr/local/lib cmake -E make_directory build && cd build && INCLUDE=/home/xujianjing/usr/local/include LIB=/home/xujianjing/usr/local/lib cmake .. -DCMAKE_BUILD_TYPE=Release -DCMAKE_PREFIX_PATH="$(LUA_BINDIR)/.." -DCMAKE_INSTALL_PREFIX="$(PREFIX)" && $(MAKE)
   ]],
   install_command = "cd build && $(MAKE) install"
}
