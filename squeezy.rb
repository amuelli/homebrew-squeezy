require "formula"

class Squeezy < Formula
  homepage "https://github.com/pssc/squeezy"
  url "https://github.com/pssc/squeezy/archive/0.25.tar.gz"
  sha1 "46c52eaa413677711d3e780ef9fc1288921429bb"

  def install
      bin.install "squeezy"
      etc.install "squeezy.conf"
  end

  def caveats
    "edit /usr/local/etc/squeezy.conf to match your own setup.  You MUST do this;
      squeezy will not do much without a suitable configuration file"
  end

  test do
    system "squeezy"
  end
end
