class TuberTui < Formula
  desc "Terminal UI for tuber work queue"
  homepage "https://github.com/tuberq/tuber-tui"
  version "0.4.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tuberq/tuber-tui/releases/download/v0.4.2/tuber-tui-aarch64-apple-darwin.tar.gz"
      sha256 "0254629344918bbdd318f4194817a26681271e470f76d27e9973c4734e7870f9"
    end
    on_intel do
      url "https://github.com/tuberq/tuber-tui/releases/download/v0.4.2/tuber-tui-x86_64-apple-darwin.tar.gz"
      sha256 "1c84a5490fe3e01e610ae5337c47b78a1f594573a33ef8ec4ea9a023b3bffe92"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tuberq/tuber-tui/releases/download/v0.4.2/tuber-tui-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c28d39c2fc39b74a0de91a04a355e8df0d2a5b6a0250961796052cade9b58979"
    end
    on_intel do
      url "https://github.com/tuberq/tuber-tui/releases/download/v0.4.2/tuber-tui-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6004b64aa54c3031f4aedb2a8d3288befe9bace03f6b18b405b800f4a89fba2e"
    end
  end

  def install
    bin.install "tuber-tui"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tuber-tui --version")
  end
end
