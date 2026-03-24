class Tuber < Formula
  desc "A fast work queue - Rust rewrite of beanstalkd"
  homepage "https://github.com/tuberq/tuber"
  version "0.3.11"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tuberq/tuber/releases/download/v0.3.11/tuber-aarch64-apple-darwin.tar.gz"
      sha256 "46e50dd92f9a2b47b845126744668e514ac24b0c1171864eebd164dd84be17d2"
    end
    on_intel do
      url "https://github.com/tuberq/tuber/releases/download/v0.3.11/tuber-x86_64-apple-darwin.tar.gz"
      sha256 "afbc46a489c56a2d885ea26251d9ac87b5b9278e5661eac568e148d2cd1bf711"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tuberq/tuber/releases/download/v0.3.11/tuber-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "28d35fb75d110a8d33db6d71531f4cfd8301c9746c7f292b70265de4bd7f2dc4"
    end
    on_intel do
      url "https://github.com/tuberq/tuber/releases/download/v0.3.11/tuber-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3157fe2f8e7e532e414d0be78e29102ddcdc143f4dddc4477803a03d43794775"
    end
  end

  def install
    bin.install "tuber"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tuber --version")
  end
end
