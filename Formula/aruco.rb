# Documentation: https://github.com/Homebrew/brew/blob/master/share/doc/homebrew/Formula-Cookbook.md
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Aruco < Formula
  desc "Aruco"
  homepage "http://www.uco.es/investiga/grupos/ava/node/26"
  url "http://downloads.sourceforge.net/project/aruco/1.3.0/aruco-1.3.0.tgz"
  version "1.3.0"
  sha256 "1ff21334e7ec143dfbfe39a458511d21c4c9d363fb176a09739a8d657e0f3cec"

  depends_on 'opencv'
  depends_on 'cmake' => :build

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    mkdir 'build' do
        system 'cmake', '..', *std_cmake_args
        system 'make'
        system 'make install'
    end
  end
end