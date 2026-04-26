class Tuber < Formula
  desc "A fast work queue - Rust rewrite of beanstalkd"
  homepage "https://github.com/tuberq/tuber"
  version "0.5.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tuberq/tuber/releases/download/v0.5.5/tuber-aarch64-apple-darwin.tar.gz"
      sha256 "26b948582a142edd5a090cd55017ac519e63c4a9e22158f976cfc02759bc45c0"
    end
    on_intel do
      url "https://github.com/tuberq/tuber/releases/download/v0.5.5/tuber-x86_64-apple-darwin.tar.gz"
      sha256 "0a99449ba025473efb7597989cea36dd1fdbd9aefcc535ee84720468d6d06a05"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tuberq/tuber/releases/download/v0.5.5/tuber-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "acd4f2d03db3c72dd69fcb50cac6dcd8382591ad98100a472c2d2bacc7d3f7da"
    end
    on_intel do
      url "https://github.com/tuberq/tuber/releases/download/v0.5.5/tuber-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d97384141b875779263c98451a16413b697ce80be67f795a9a7b8dc39a336caa"
    end
  end

  def install
    bin.install "tuber"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tuber --version")
  end
end
