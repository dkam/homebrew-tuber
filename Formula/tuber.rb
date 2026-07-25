class Tuber < Formula
  desc "A fast work queue - Rust rewrite of beanstalkd"
  homepage "https://github.com/tuberq/tuber"
  version "0.13.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tuberq/tuber/releases/download/v0.13.0/tuber-aarch64-apple-darwin.tar.gz"
      sha256 "e55908ad12ffa45e07fd753844bda8a4eeca26dcd6afba41e3dd8e78396067d3"
    end
    on_intel do
      url "https://github.com/tuberq/tuber/releases/download/v0.13.0/tuber-x86_64-apple-darwin.tar.gz"
      sha256 "0aeb671b151608237ac245fc3cce8164d0b6e9ea27e09b16f7085f684fcbbb32"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tuberq/tuber/releases/download/v0.13.0/tuber-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1af548fa2c81f15d4651e68c1d28371090b8634322ada08ff8a82c93073e0a82"
    end
    on_intel do
      url "https://github.com/tuberq/tuber/releases/download/v0.13.0/tuber-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "39dff3e800c5ecce5535b498d5b777697da2dc173ebb5d18bf9d8b09ff737e68"
    end
  end

  def install
    bin.install "tuber"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tuber --version")
  end
end
