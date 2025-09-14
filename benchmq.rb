class Benchmq < Formula
  desc "BenchMQ is a simple, fast, and lightweight CLI to benchmark your MQTT broker with ease"
  homepage "https://github.com/rayomqio/benchmq"

  if Hardware::CPU.arm?
    url "https://github.com/rayomqio/benchmq/releases/download/v1.0.4/benchmq_darwin_arm64.tar.gz"
    sha256 "03fbde0dc8b365973928d1223d1bd105f3b37c4a3b1882b0b672e6dce1ec7934"
  else
    url "https://github.com/rayomqio/benchmq/releases/download/v1.0.4/benchmq_darwin_amd64.tar.gz"
    sha256 "e572960169c2a931f033523950053ea56eab1c2209a4a93dcbadccfc62460bc9"
  end

  license "Apache-2.0"

  def install
    bin.install "benchmq"
  end

  test do
    system "#{bin}/benchmq", "--help"
  end
end
