class Tuber < Formula
  desc "A fast work queue - Rust rewrite of beanstalkd"
  homepage "https://github.com/tuberq/tuber"
  version "0.3.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tuberq/tuber/releases/download/v0.3.3/tuber-aarch64-apple-darwin.tar.gz"
      sha256 "e8926fa8e936107d6b32c7a2037b4a367f323e1f2b8b062ec979fce42287f215"
    end
    on_intel do
      url "https://github.com/tuberq/tuber/releases/download/v0.3.3/tuber-x86_64-apple-darwin.tar.gz"
      sha256 "36f3adcb769d971101df02a3d30161bfe611159c6373a538e98c85377770a2ab"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tuberq/tuber/releases/download/v0.3.3/tuber-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "01dff82b345eba0f57a1eebbe7d065610ce49a0f30adb3d0241e605878ded428"
    end
    on_intel do
      url "https://github.com/tuberq/tuber/releases/download/v0.3.3/tuber-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ab271ec5446bf87c580a59ef7b074ca1953e3809321749b7af2a354ee3239c70"
    end
  end

  def install
    bin.install "tuber"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tuber --version")
  end
end
