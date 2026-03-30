class TuberTui < Formula
  desc "Terminal UI for tuber work queue"
  homepage "https://github.com/tuberq/tuber-tui"
  version "0.5.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tuberq/tuber-tui/releases/download/v0.5.7/tuber-tui-aarch64-apple-darwin.tar.gz"
      sha256 "f0cfe6da7b5c1e075b19f9628bd0dabb9018dd2201f61bbe1ab6a9969cc46dea"
    end
    on_intel do
      url "https://github.com/tuberq/tuber-tui/releases/download/v0.5.7/tuber-tui-x86_64-apple-darwin.tar.gz"
      sha256 "b380fb1bab424f339f719b75ad4326e581e4e4bb9d6e2ad9991c4ca838524eda"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tuberq/tuber-tui/releases/download/v0.5.7/tuber-tui-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1945f1e327c983f69e83c85dc16d609597f2574f330ef64c70fce2ab57af25dc"
    end
    on_intel do
      url "https://github.com/tuberq/tuber-tui/releases/download/v0.5.7/tuber-tui-x86_64-unknown-linux-musl.tar.gz"
      sha256 "232102106869830689eb4d7aa1e5874330f321261e6bfe92ee9a382004f6d20c"
    end
  end

  def install
    bin.install "tuber-tui"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tuber-tui --version")
  end
end
