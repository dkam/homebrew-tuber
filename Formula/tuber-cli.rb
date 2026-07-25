class TuberCli < Formula
  desc "CLI client for tuber work queue"
  homepage "https://github.com/tuberq/tuber-rs"
  version "0.10.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tuberq/tuber-rs/releases/download/v0.10.0/tuber-cli-aarch64-apple-darwin.tar.gz"
      sha256 "7e4164f9917c7ba5d7ef53d95276bb380617cc34d4ea16c34e89aed56cf10a6e"
    end
    on_intel do
      url "https://github.com/tuberq/tuber-rs/releases/download/v0.10.0/tuber-cli-x86_64-apple-darwin.tar.gz"
      sha256 "8f436865f4e31e887b28512edc7fa96b21607deb5c9c55417af23d9bcfeffa15"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tuberq/tuber-rs/releases/download/v0.10.0/tuber-cli-aarch64-unknown-linux-musl.tar.gz"
      sha256 "eefa26787206ee2685b9369e563b3d1ccd599957de51b4e2f920d0b4f79e45ea"
    end
    on_intel do
      url "https://github.com/tuberq/tuber-rs/releases/download/v0.10.0/tuber-cli-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a16b3b1b7f1e6ead422f67a6157cc80418029cc5bd88de11552ad6aa1b7a5733"
    end
  end

  def install
    bin.install "tuber-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tuber-cli --version")
  end
end
