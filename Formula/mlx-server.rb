class MlxServer < Formula
  desc "Local LLM inference server for Apple Silicon using MLX"
  homepage "https://github.com/panbanda/mlx-server"
  version "0.1.5"
  license "MIT OR Apache-2.0"

  depends_on :macos
  depends_on arch: :arm64

  url "https://github.com/panbanda/mlx-server/releases/download/mlx-server-v0.1.5/mlx-server_0.1.5_aarch64-apple-darwin.tar.gz"
  sha256 "d8f7ed094c79ee9a14808eae3ccc0e95258eb31cd3fbfcea9cca6c22e6a54f22"

  def install
    bin.install "mlx-server"
  end

  test do
    system "#{bin}/mlx-server", "--help"
  end
end
