class Tuber < Formula
  desc "A fast work queue - Rust rewrite of beanstalkd"
  homepage "https://github.com/tuberq/tuber"
  version "0.12.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tuberq/tuber/releases/download/v0.12.1/tuber-aarch64-apple-darwin.tar.gz"
      sha256 "b36c2498ebd6b7dc8c505ae4e29ae156daa6dd0e9f4fc06ba8b0ce85cacac22e"
    end
    on_intel do
      url "https://github.com/tuberq/tuber/releases/download/v0.12.1/tuber-x86_64-apple-darwin.tar.gz"
      sha256 "bde7645b0cc73e95d855a85c34c3b7e9db0c89eeea4e939c112c91e48c9cfefe"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tuberq/tuber/releases/download/v0.12.1/tuber-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "573ab80154ee7c606c73064c9ff75d6c37bd456fe44624ea311a3ee7e0b775fb"
    end
    on_intel do
      url "https://github.com/tuberq/tuber/releases/download/v0.12.1/tuber-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5c2201df9a8e6cc082a664b705ecac8bb64f92daab3f49d3c3c1557dbb1593bd"
    end
  end

  def install
    bin.install "tuber"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tuber --version")
  end
end
