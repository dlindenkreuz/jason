defmodule Bench.Helpers do
  def put_job_if_loaded(jobs, mod, fun) do
    if Code.ensure_loaded?(mod) do
      Map.put(jobs, Atom.to_string(mod), fun)
    else
      jobs
    end
  end
end
