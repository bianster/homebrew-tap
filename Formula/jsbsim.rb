class Jsbsim < Formula
  homepage "http://jsbsim.sourceforge.net"
  url "https://github.com/tridge/jsbsim.git"
  version "0.1.2"

  depends_on "automake" => :build
  depends_on "autoconf" => :build
  depends_on "libtool" => :build
  depends_on "pkgconfig"

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    system "./autogen.sh", "--enable-libraries", "--prefix=#{prefix}"
    system "make", "install"
  end
end