class TuberCli < Formula
  desc "CLI client for tuber work queue"
  homepage "https://github.com/tuberq/tuber-rs"
  version "0.13.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tuberq/tuber-rs/releases/download/v0.13.0/tuber-cli-aarch64-apple-darwin.tar.gz"
      sha256 "ef9f8e35777e1dcb05b50b588c531ec321700b63f88db6b55e230da83975e2e2"
    end
    on_intel do
      url "https://github.com/tuberq/tuber-rs/releases/download/v0.13.0/tuber-cli-x86_64-apple-darwin.tar.gz"
      sha256 "1ad3dbb218d9cec9d694cdb23d6d09f211c429a35ec1e73e8afbae025d75361c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tuberq/tuber-rs/releases/download/v0.13.0/tuber-cli-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8a69c3d24f190a474837ef646b98828bda905538c2b9bbcd19343e180763a95e"
    end
    on_intel do
      url "https://github.com/tuberq/tuber-rs/releases/download/v0.13.0/tuber-cli-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0768a463225a2b13434cf65a7b0d7a51bb5b15d3f602f3cfed3c50b1abfe35ed"
    end
  end

  def install
    bin.install "tuber-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tuber-cli --version")
  end
end
