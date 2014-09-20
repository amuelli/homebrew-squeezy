require "formula"

class Squeezy < Formula
  homepage "https://github.com/pssc/squeezy"
  url "https://github.com/pssc/squeezy/archive/0.24.tar.gz"
  sha1 "601e9cad7ae10df583c4929fbc1ac3fe51af4505"

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
