class TuberTui < Formula
  desc "Terminal UI for tuber work queue"
  homepage "https://github.com/tuberq/tuber-tui"
  version "0.5.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tuberq/tuber-tui/releases/download/v0.5.4/tuber-tui-aarch64-apple-darwin.tar.gz"
      sha256 "d85e1f5f3b57180588a98e469287c00021dfdc3b7e77e97e0626b4ced44761e2"
    end
    on_intel do
      url "https://github.com/tuberq/tuber-tui/releases/download/v0.5.4/tuber-tui-x86_64-apple-darwin.tar.gz"
      sha256 "28299249403b6280481debdf105a748b48a5678e58510d5bb6eb5a71e5a40999"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tuberq/tuber-tui/releases/download/v0.5.4/tuber-tui-aarch64-unknown-linux-musl.tar.gz"
      sha256 "29a302a5f6c7c5af1fe17e7c35ea8351a24a0872d24e0b7971aa2e06443334b2"
    end
    on_intel do
      url "https://github.com/tuberq/tuber-tui/releases/download/v0.5.4/tuber-tui-x86_64-unknown-linux-musl.tar.gz"
      sha256 "687be1c459c4536ec29f37571f13d6c301642c07ea59a0c27cb66374475d858e"
    end
  end

  def install
    bin.install "tuber-tui"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tuber-tui --version")
  end
end
