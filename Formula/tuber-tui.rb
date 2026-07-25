class TuberTui < Formula
  desc "Terminal UI for tuber work queue"
  homepage "https://github.com/tuberq/tuber-rs"
  version "0.13.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tuberq/tuber-rs/releases/download/v0.13.0/tuber-tui-aarch64-apple-darwin.tar.gz"
      sha256 "82d89219ee185a26ca88e95b6abd110fb1f9bf593b87553bffadfe7bca256455"
    end
    on_intel do
      url "https://github.com/tuberq/tuber-rs/releases/download/v0.13.0/tuber-tui-x86_64-apple-darwin.tar.gz"
      sha256 "4a2b81db4579a476a2eb8479e3864bcec36f862309f603e1bfa7bbe240990910"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tuberq/tuber-rs/releases/download/v0.13.0/tuber-tui-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5def5a2a6c9f0b6de0ade9f5554950f7c852311ac288ac3c3a0b566aa4b777fe"
    end
    on_intel do
      url "https://github.com/tuberq/tuber-rs/releases/download/v0.13.0/tuber-tui-x86_64-unknown-linux-musl.tar.gz"
      sha256 "caeb4f2ca4963decdb501977298c4afaaa12a1e213f0c08290bb3966155a1402"
    end
  end

  def install
    bin.install "tuber-tui"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tuber-tui --version")
  end
end
