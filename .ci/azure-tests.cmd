@rem https://github.com/numba/numba/blob/master/buildscripts/incremental/setup_conda_environment.cmd
@rem The cmd /C hack circumvents a regression where conda installs a conda.bat
@rem script in non-root environments.
set PIP_INSTALL=pip install -q

@echo on

@rem Upgrade tools
make distclean && make && make test

@rem Install requirements
make distclean && make debug && make test

if %errorlevel% neq 0 exit /b %errorlevel%
