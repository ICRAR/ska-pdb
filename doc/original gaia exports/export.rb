
#
# Copyright (C) 2006-2011 Gaia Data Processing and Analysis Consortium
#
# This library is free software; you can redistribute it and/or
# modify it under the terms of the GNU Lesser General Public
# License as published by the Free Software Foundation; either
# version 2.1 of the License, or (at your option) any later version.
#
# This library is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
# Lesser General Public License for more details.
#
# You should have received a copy of the GNU Lesser General Public
# License along with this library; if not, write to the Free Software
# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301  USA
#             THIS IS AN AUTOMATICALLY GENERATED FILE - DO NOT EDIT!
#
#    The file has been automatically generated from the contents of the
#    Gaia Parameter Database at the URL
#        http://gaia.esac.esa.int/gpdb
#    on 2012-05-18T05:05:01.
#
#    Please report any problems arising from the usage of this file to
#    the Gaia Librarian gaialib@rssd.esa.int
#

 #
 # Container class to enclose the contents of the Gaia Parameter
 # Database at<br/>
 #     <code><a href="http://gaia.esac.esa.int/gpdb">http://gaia.esac.esa.int/gpdb</a></code><p>
 # A hierachy of nested classes below matches the parameter naming scheme
 # detailed in <code><a href="ftp://ftp.rssd.esa.int/pub/Gaia/docs/gaia-jdb-007.pdf">GAIA-JdB-007</a></code><br/>
 #
 # author	Gaia SOC, ESA/ESTEC
 # version	-live (r.231494)-2012-05-18T05:05:01
 #
class GaiaParam
	DBVersion = "-live (r.231494)-2012-05-18T05:05:01"

 class Nature
    #
     # Cousins R minus I (R-I) magnitude of an unreddened A0V star. The passbands are taken from M.S. Bessell, 1990, 'UBVRI passbands', PASP, 102, 1181
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    A0VSTAR_RMINI = -0.01 # [mag]

    #
     # Flux f_{0\nu} of an unreddened A0V star with V = 0 mag at the wavelength \lambda_0 (see also J.H.J. de Bruijne, 26 May 2003, 'Stellar fluxes: transformations and calibrations', GAIA-JdB-005, revision 1)
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    A0VSTAR_CALIBRATIONFLUX_NU = 3.693e-23 # [W m^-2 Hz^-1]

    #
     # Photon flux N_{0\lambda}(\lambda_0) of an unreddened A0V star with V = 0 mag at the wavelength \lambda_0 (see also J.H.J. de Bruijne, 26 May 2003, 'Stellar fluxes: transformations and calibrations', GAIA-JdB-005, revision 1). Note that the parameter A0VStar_Spectrum_NumberOfPhotons refers to Pickles' star number 009, and not to the Kurucz/ATLAS9 Vega spectrum which has been used for flux normalisation/calibration and zero-point definition; the parameter A0VStar_Spectrum_NumberOfPhotons therefore does not precisely have A0VStar_CalibrationFlux photons s^-1 m^-2 nm^-1 at \lambda_0 = A0VStar_CalibrationWavelength
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    A0VSTAR_CALIBRATIONFLUX_NUMBEROFPHOTONS = 101336775.3749 # [photons s^-1 m^-2 nm^-1]

    #
     # Calibration (function) normalisation constant N_0. This constant can be used to define the zero point of the Johnson V magnitude scale by imposing the requirement that, for any stellar photon flux density N_\lambda (in photons s^-1 m^-2 nm^-1 above the Earth's atmosphere) with V = 0 mag, the integral from 470 to 700 nm (the support interval of the Johnson V band) of N_\lambda times S_V(\lambda) equals N_0 photons s^-1 m^-2. The function S_V(\lambda) and the normalisation constant N_0 depend on the definition of the shape of the Johnson V band, on the monochromatic calibration flux f_{0\lambda} (or f_{0\nu}) at \lambda_0, and on the spectrum f_{0\nu}(\lambda) of the general unreddened A0V star. The number 6.62606876E-34 refers to the 'CODATA 1998 value' of the Planck constant (parameter Planck_Constant)
     # <p>
     # Source: J.H.J. de Bruijne, 26 May 2003, 'Stellar fluxes: transformations and calibrations', GAIA-JdB-005, revision 1, Appendix D<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    A0VSTAR_CALIBRATIONFUNCTION_NORMALISATION = 8827167090.0551 # [photons s^-1 m^-2]

    #
     # Constant of aberration, nowadays irrelevant as a fundamental constant, at the standard epoch J2000.0. The IAU (1976) System of Astronomical Constants (e.g., T. Lederle, 1980, MitAG, 48, 59, Table 1) lists 20.49552 arcsec
     # <p>
     # Source: P.K. Seidelmann, 1992, 'Explanatory Supplement to the Astronomical Almanac', University Science Books, Mill Valley, Ca., ISBN 0-935702-68-7, Equation 3.253-4, page 131<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    ABERRATION_CONSTANT_J2000 = 20.49122 # [arcsec]

    #
     # One arcsecond in units of radians
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    ARCSECOND_RADIAN = 4.84813681109536e-6 # [rad]

    #
     # Post-Newtonian deflection angle of a limb-grazing light ray due to the spherically symmetric part of the gravitational field of 1 Ceres
     # <p>
     # Source: S.A. Klioner, 2003, 'A Practical Relativistic Model for Microarcsecond Astrometry in Space', AJ, 125, 1580, Equation 64 with cot(x) = cos(x) / sin(x) approximated by x^-1; see also J.H.J. de Bruijne, 19 February 2002, 'Gravitational light deflection', GAIA-JdB-001<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    ASTEROID1CERES_LIGHTDEFLECTION_LIMB = 1.0 # [10^-6 arcsec]

    #
     # Perihelion distance of 1 Ceres (epoch 1 October 1989). The orbital elements are referenced to the B1950 equinox and ecliptic
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    ASTEROID1CERES_PERIHELIONDISTANCE_B1950 = 2.553 # [AU]

    #
     # Post-Newtonian deflection angle of a limb-grazing light ray due to the spherically symmetric part of the gravitational field of 2 Pallas
     # <p>
     # Source: S.A. Klioner, 2003, 'A Practical Relativistic Model for Microarcsecond Astrometry in Space', AJ, 125, 1580, Equation 64 with cot(x) = cos(x) / sin(x) approximated by x^-1; see also J.H.J. de Bruijne, 19 February 2002, 'Gravitational light deflection', GAIA-JdB-001<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    ASTEROID2PALLAS_LIGHTDEFLECTION_LIMB = 0.0 # [10^-6 arcsec]

    #
     # Perihelion distance of 2 Pallas (epoch 1 October 1989). The orbital elements are referenced to the B1950 equinox and ecliptic
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    ASTEROID2PALLAS_PERIHELIONDISTANCE_B1950 = 2.120 # [AU]

    #
     # Mass of 3 Juno
     # <p>
     # Source: Value is calculated following J.L. Hilton, 1999, 'US Naval Observatory Ephemerides of the Largest Asteroids', AJ, 117, 1077, who assumes a mean mass density of 3 g cm^-3. A mass of 2.0E19 kg is found on http://nssdc.gsfc.nasa.gov/planetary/factsheet/asteroidfact.html<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    ASTEROID3JUNO_MASS = 2.99e+19 # [kg]

    #
     # Post-Newtonian deflection angle of a limb-grazing light ray due to the spherically symmetric part of the gravitational field of 3 Juno
     # <p>
     # Source: S.A. Klioner, 2003, 'A Practical Relativistic Model for Microarcsecond Astrometry in Space', AJ, 125, 1580, Equation 64 with cot(x) = cos(x) / sin(x) approximated by x^-1; see also J.H.J. de Bruijne, 19 February 2002, 'Gravitational light deflection', GAIA-JdB-001<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    ASTEROID3JUNO_LIGHTDEFLECTION_LIMB = 0.0 # [10^-6 arcsec]

    #
     # Perihelion distance of 3 Juno (epoch 1 October 1989). The orbital elements are referenced to the B1950 equinox and ecliptic
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    ASTEROID3JUNO_PERIHELIONDISTANCE_B1950 = 2.599 # [AU]

    #
     # Post-Newtonian deflection angle of a limb-grazing light ray due to the spherically symmetric part of the gravitational field of 4 Vesta
     # <p>
     # Source: S.A. Klioner, 2003, 'A Practical Relativistic Model for Microarcsecond Astrometry in Space', AJ, 125, 1580, Equation 64 with cot(x) = cos(x) / sin(x) approximated by x^-1; see also J.H.J. de Bruijne, 19 February 2002, 'Gravitational light deflection', GAIA-JdB-001<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    ASTEROID4VESTA_LIGHTDEFLECTION_LIMB = 1.0 # [10^-6 arcsec]

    #
     # Perihelion distance of 4 Vesta (epoch 1 October 1989). The orbital elements are referenced to the B1950 equinox and ecliptic
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    ASTEROID4VESTA_PERIHELIONDISTANCE_B1950 = 2.147 # [AU]

    #
     # Astronomical unit (AU) length (TCB-compatible value)
     # <p>
     # Source: Numerical value remains TBC: the IAU has currently (October 2010) not yet agreed on a TCB-compatible value for the AU<br/>
     # Status: TBC<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    ASTRONOMICALUNIT_METER = 1.495978706910000e+11 # [m]

    #
     # Atomic mass constant (also known as atomic mass unit [amu]; 1 amu is defined as 1/12-th of the mass of a 12-C atom). Note: best-measured value equals 1.660538921E-27 (P.J. Mohr, B.N. Taylor, D.B. Newell, 22 July 2011, 'The 2010 CODATA Recommended Values of the Fundamental Physical Constants', National Institute of Standards and Technology, Gaithersburg, MD 20899-8401; http://www.codata.org/ and http://physics.nist.gov/constants, Web Version 6.2, retrieved on 18 January 2012)
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    ATOMICMASS_CONSTANT = 1.660538921e-27 # [kg]

    #
     # Bohr radius. Note: best-measured value equals 0.52917721092E-10 (P.J. Mohr, B.N. Taylor, D.B. Newell, 22 July 2011, 'The 2010 CODATA Recommended Values of the Fundamental Physical Constants', National Institute of Standards and Technology, Gaithersburg, MD 20899-8401; http://www.codata.org/ and http://physics.nist.gov/constants, Web Version 6.2, retrieved on 18 January 2012)
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    BOHRRADIUS_CONSTANT = 5.2917721011e-11 # [m]

    #
     # Boltzmann's constant. Note: best-measured value equals 1.3806488E-23(P.J. Mohr, B.N. Taylor, D.B. Newell, 22 July 2011, 'The 2010 CODATA Recommended Values of the Fundamental Physical Constants', National Institute of Standards and Technology, Gaithersburg, MD 20899-8401; http://www.codata.org/ and http://physics.nist.gov/constants, Web Version 6.2, retrieved on 18 January 2012)
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    BOLTZMANN_CONSTANT = 1.3806488e-23 # [J K^-1]

    #
     # Mass of Charon (do not use for high-precision (orbit) calculations)
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    CHARON_MASS = 1.471e+21 # [kg]

    #
     # Mean mass density of Charon
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    CHARON_MASSDENSITY_MEAN = 1.586 # [g cm^-3]

    #
     # Radius of the smallest hypothetical sphere around Charon which would encompass the body (this is a low-accuracy parameter used in the relativistic model)
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    CHARON_ENCOMPASSINGSPHERERADIUS = 6.05e+5 # [m]

    #
     # Post-Newtonian deflection angle of a limb-grazing light ray due to the spherically symmetric part of the gravitational field of Charon
     # <p>
     # Source: S.A. Klioner, 2003, 'A Practical Relativistic Model for Microarcsecond Astrometry in Space', AJ, 125, 1580, Equation 64 with cot(x) = cos(x) / sin(x) approximated by x^-1; see also J.H.J. de Bruijne, 19 February 2002, 'Gravitational light deflection', GAIA-JdB-001<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    CHARON_LIGHTDEFLECTION_LIMB = 1.0 # [10^-6 arcsec]

    #
     # Number of seconds per day
     # <p>
     # Source: IAU definition<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    DAY_SECOND = 86400.0 # [s]

    #
     # One degree in units of radians
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    DEGREE_RADIAN = 1.74532925199433e-2 # [rad]

    #
     # Surface gravity of the Earth
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    EARTH_SURFACEGRAVITY = 9.798 # [m s^-2]

    #
     # IAU-recommended value for the rate of change (in degrees per Julian day, calculated from the standard epoch) of the right ascension \alpha_0 of the north pole of rotation of Earth. The pair (\alpha_0, \delta_0) denotes standard equatorial coordinates with equinox J2000 at epoch J2000 (the standard epoch is 1.5 January 2000 = JD2451545.0 TDB). The north pole is that pole of rotation that lies on the north side of the invariable plane of the solar system; the approximate coordinates of the north pole of the invariable plane are \alpha_0 = 273.85 deg and \delta_0 = 66.99 degrees. The numerical value shall be used for comparative purposes only
     # <p>
     # Source: B.A. Archinal, et al., 1 February 2011, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009', Celestial Mechanics and Dynamical Astronomy, 109, 101-135 (2011CeMDA.109..101A)<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    EARTH_NORTHROTATIONALPOLE_RIGHTASCENSIONRATEOFCHANGE = -0.00001755 # [deg day^-1]

    #
     # IAU-recommended value for the rate of change (in degrees per Julian day, calculated from the standard epoch) of the declination \delta_0 of the north pole of rotation of Earth. The pair (\alpha_0, \delta_0) denotes standard equatorial coordinates with equinox J2000 at epoch J2000 (the standard epoch is 1.5 January 2000 = JD2451545.0 TDB). The north pole is that pole of rotation that lies on the north side of the invariable plane of the solar system; the approximate coordinates of the north pole of the invariable plane are \alpha_0 = 273.85 deg and \delta_0 = 66.99 degrees. The numerical value shall be used for comparative purposes only
     # <p>
     # Source: B.A. Archinal, et al., 1 February 2011, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009', Celestial Mechanics and Dynamical Astronomy, 109, 101-135 (2011CeMDA.109..101A)<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    EARTH_NORTHROTATIONALPOLE_DECLINATIONRATEOFCHANGE = -0.00001525 # [deg day^-1]

    #
     # Geocentric gravitational constant (TCB-compatible value), including the Earth's atmosphere but excluding the mass of the Moon
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    EARTH_GM = 3.986004418e+14 # [m^3 s^-2]

    #
     # Earth mass, including its atmosphere but excluding the mass of the Moon
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    EARTH_MASS = 5.9726e+24 # [kg]

    #
     # Mean mass density of the Earth
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    EARTH_MASSDENSITY_MEAN = 5.514 # [g cm^-3]

    #
     # Equatorial radius of the Earth
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    EARTH_EQUATORIALRADIUS = 6.3781366e+6 # [m]

    #
     # Mean polar radius of the Earth
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    EARTH_POLARRADIUS = 6.3567519e+6 # [m]

    #
     # Mean volumetric radius of the Earth
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    EARTH_VOLUMETRICRADIUS = 6.37100e+6 # [m]

    #
     # Mean radius of the Earth
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    EARTH_RADIUS_MEAN = 6.37101e+6 # [m]

    #
     # Geometrical flattening factor f of the Earth (f = (a-b)/a); this quantity is also refered to as ellipticity, but is not identical to eccentricity
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    EARTH_FLATTENING = 3.35281970e-3

    #
     # Eccentricity e of the Earth (its shape, not its orbit)
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    EARTH_ECCENTRICITY = 8.18193009e-2

    #
     # Radius of the smallest hypothetical sphere around the Earth which would encompass the body (this is a low-accuracy parameter used in the relativistic model)
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    EARTH_ENCOMPASSINGSPHERERADIUS = 6378137.0 # [m]

    #
     # Mean orbital speed of the Earth (mean velocity over an unperturbed elliptic orbit). The equation is accurate to 4-th order in EMBC_OrbitalEccentricity_J2000
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    EARTH_ORBITALSPEED_MEAN = 2.9783e+4 # [m s^-1]

    #
     # Geometric transit probability (Earth transiting the Sun) for an observer external to the solar system
     # <p>
     # Source: E.g., A. Johansen, 26 March 2002, 'Detection of planetary transits with the Gaia satellite', GAIA-CUO-106, issue 1.3, Section 2.1, Equation 2.2, page 14<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    EARTH_TRANSITPROBABILITY = 0.470 # [%]

    #
     # Maximum reduction of the solar flux for an observer external to the solar system during a transit of Earth
     # <p>
     # Source: E.g., A. Johansen, 26 March 2002, 'Detection of planetary transits with the Gaia satellite', GAIA-CUO-106, issue 1.3, Section 2.2, Equation 2.4, page 14<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    EARTH_FLUXREDUCTION_MAXIMUM = 0.008 # [%]

    #
     # Maximum transit time of Earth (transiting the Sun) for an observer external to the solar system
     # <p>
     # Source: E.g., A. Johansen, 26 March 2002, 'Detection of planetary transits with the Gaia satellite', GAIA-CUO-106, issue 1.3, Section 2.3, Equation 2.5, page 15<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    EARTH_TRANSITTIME_MAXIMUM = 0.55 # [day]

    #
     # Geopotential scale factor
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    EARTHELLIPSOID_RSUB0 = 6.3636726e+6 # [m]

    #
     # Radial-velocity amplitude of the Sun induced by the Earth system for 'an edge-on observer' (i.e., an observer in the orbital plane of the Earth system)
     # <p>
     # Source: E.g., A. Johansen, 26 March 2002, 'Detection of planetary transits with the Gaia satellite', GAIA-CUO-106, issue 1.3, Section 1.4, Equation 1.18, page 9<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    EARTHSYSTEM_RADIALVELOCITYSIGNATURE = 0.091 # [m s^-1]

    #
     # Astrometric signature of the Sun induced by the Earth system for an observer located at a distance of 10 pc from the Sun
     # <p>
     # Source: E.g., A. Johansen, 26 March 2002, 'Detection of planetary transits with the Gaia satellite', GAIA-CUO-106, issue 1.3, Section 1.7, Equation 1.22, page 11<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    EARTHSYSTEM_ASTROMETRICSIGNATURE_10PARSEC = 0.304 # [10^-6 arcsec]

    #
     # Ratio of Earth to Moon mass
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    EARTHTOMOON_MASSRATIO = 81.30057

    #
     # Electric constant (defining constant)
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    ELECTRIC_CONSTANT = 8.85418781762039e-12 # [F m^-1]

    #
     # Classical electron radius. Note: best-measured value equals 2.8179403267E-15 (P.J. Mohr, B.N. Taylor, D.B. Newell, 22 July 2011, 'The 2010 CODATA Recommended Values of the Fundamental Physical Constants', National Institute of Standards and Technology, Gaithersburg, MD 20899-8401; http://www.codata.org/ and http://physics.nist.gov/constants, Web Version 6.2, retrieved on 18 January 2012)
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    ELECTRON_CLASSICALRADIUS = 2.8179403268e-15 # [m]

    #
     # Thomson free-electron-scattering absorption coefficient (cross section per electron). Note: best-measured value equals 0.6652458734E-28 (P.J. Mohr, B.N. Taylor, D.B. Newell, 22 July 2011, 'The 2010 CODATA Recommended Values of the Fundamental Physical Constants', National Institute of Standards and Technology, Gaithersburg, MD 20899-8401; http://www.codata.org/ and http://physics.nist.gov/constants, Web Version 6.2, retrieved on 18 January 2012)
     # <p>
     # Source: E.g., R. Kippenhahn, A. Weigert, 1991, 'Stellar structure and evolution' (corrected 2-nd printing), Springer Verlag, Berlin, Section 17, Equation 17.1, page 137<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    ELECTRON_CROSSSECTION_THOMSONSCATTERING = 6.652458735e-29 # [m^2]

    #
     # Fine structure constant. Note: best-measured value equals 7.2973525698E-3 (P.J. Mohr, B.N. Taylor, D.B. Newell, 22 July 2011, 'The 2010 CODATA Recommended Values of the Fundamental Physical Constants', National Institute of Standards and Technology, Gaithersburg, MD 20899-8401; http://www.codata.org/ and http://physics.nist.gov/constants, Web Version 6.2, retrieved on 18 January 2012)
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    FINESTRUCTURE_CONSTANT = 7.2973525755e-3

    #
     # Foreshortening constant A_z^-1 (see ESA, 1997, 'The Hipparcos and Tycho Catalogues', ESA SP-1200, Volume 1, page 25, Table 1.2.2)
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    FORESHORTENING_CONSTANT = 1.022712165e-9 # [mas^-1 km^-1 yr^-1 s]

    #
     # Surface area of unit sphere (4 Pi steradians) in units of square degrees
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    FOURPISTERADIAN_DEGREESQUARE = 41252.9612494193 # [deg^2]

    #
     # Sellmeier coefficient C_1 of synthetic fused Silica, in units of (10^-6 m)^2, at T = 120 K. It is emphasised that this C-value is already squared, thus complying with the denominator units of the Sellmeier equation, in (10^-6 m)^2. The Sellmeier equation is an empirical relation between the refractive index n and wavelength \lambda for transparent media in the form: n^2(\lambda) = 1 + \frac{B_1 \lambda^2}{\lambda^2 - C_1} + \frac{B_2 \lambda^2}{\lambda^2 - C_2} + \frac{B_3 \lambda^2}{\lambda^2 - C_3}, where B_1, B_2, B_3 and C_1, C_2, C_3 are experimentally-determined Sellmeier coefficients. These coefficients are defined for \lambda measured in 10^-6 m. The wavelength \lambda is the vacuum wavelength and not that in the material itself, which is \lambda / n(\lambda)
     # <p>
     # Source: EADS-Astrium, 4 July 2008, 'Code V Models Description', GAIA.ASF.TCN.PLM.00287, issue 1, revision 0. For temperature-dependent Sellmeier coefficients, see G. Ghosh, M. Endo, T. Iwasaki, 1 August 1994, 'Temperature-dependent Sellmeier coefficients and chromatic dispersions for some optical fiber glasses', Journal of Lightwave Technology, Volume 12, Number 8, pages 1338-1342 (1994JLwT...12.1338G) and http://www.schott.com/advanced_optics/english/download/- schott_tie-29_refractive_index_v3_jan_2007_en.pdf<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    FUSEDSILICA_SELLMEIERCOEFFICIENT_C1 = 0.00787874390 # [(10^-6 m)^2]

    #
     # Sellmeier coefficient C_2 of synthetic fused Silica, in units of (10^-6 m)^2, at T = 120 K. It is emphasised that this C-value is already squared, thus complying with the denominator units of the Sellmeier equation, in (10^-6 m)^2. The Sellmeier equation is an empirical relation between the refractive index n and wavelength \lambda for transparent media in the form: n^2(\lambda) = 1 + \frac{B_1 \lambda^2}{\lambda^2 - C_1} + \frac{B_2 \lambda^2}{\lambda^2 - C_2} + \frac{B_3 \lambda^2}{\lambda^2 - C_3}, where B_1, B_2, B_3 and C_1, C_2, C_3 are experimentally-determined Sellmeier coefficients. These coefficients are defined for \lambda measured in 10^-6 m. The wavelength \lambda is the vacuum wavelength and not that in the material itself, which is \lambda / n(\lambda)
     # <p>
     # Source: EADS-Astrium, 4 July 2008, 'Code V Models Description', GAIA.ASF.TCN.PLM.00287, issue 1, revision 0. For temperature-dependent Sellmeier coefficients, see G. Ghosh, M. Endo, T. Iwasaki, 1 August 1994, 'Temperature-dependent Sellmeier coefficients and chromatic dispersions for some optical fiber glasses', Journal of Lightwave Technology, Volume 12, Number 8, pages 1338-1342 (1994JLwT...12.1338G) and http://www.schott.com/advanced_optics/english/download/- schott_tie-29_refractive_index_v3_jan_2007_en.pdf<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    FUSEDSILICA_SELLMEIERCOEFFICIENT_C2 = 0.07320427965 # [(10^-6 m)^2]

    #
     # Sellmeier coefficient C_3 of synthetic fused Silica, in units of (10^-6 m)^2, at T = 120 K. It is emphasised that this C-value is already squared, thus complying with the denominator units of the Sellmeier equation, in (10^-6 m)^2. The Sellmeier equation is an empirical relation between the refractive index n and wavelength \lambda for transparent media in the form: n^2(\lambda) = 1 + \frac{B_1 \lambda^2}{\lambda^2 - C_1} + \frac{B_2 \lambda^2}{\lambda^2 - C_2} + \frac{B_3 \lambda^2}{\lambda^2 - C_3}, where B_1, B_2, B_3 and C_1, C_2, C_3 are experimentally-determined Sellmeier coefficients. These coefficients are defined for \lambda measured in 10^-6 m. The wavelength \lambda is the vacuum wavelength and not that in the material itself, which is \lambda / n(\lambda)
     # <p>
     # Source: EADS-Astrium, 4 July 2008, 'Code V Models Description', GAIA.ASF.TCN.PLM.00287, issue 1, revision 0. For temperature-dependent Sellmeier coefficients, see G. Ghosh, M. Endo, T. Iwasaki, 1 August 1994, 'Temperature-dependent Sellmeier coefficients and chromatic dispersions for some optical fiber glasses', Journal of Lightwave Technology, Volume 12, Number 8, pages 1338-1342 (1994JLwT...12.1338G) and http://www.schott.com/advanced_optics/english/download/- schott_tie-29_refractive_index_v3_jan_2007_en.pdf<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    FUSEDSILICA_SELLMEIERCOEFFICIENT_C3 = 85.64043680329 # [(10^-6 m)^2]

    #
     # Inverse of the fine structure constant. Note: best-measured value equals 137.035999074 (P.J. Mohr, B.N. Taylor, D.B. Newell, 22 July 2011, 'The 2010 CODATA Recommended Values of the Fundamental Physical Constants', National Institute of Standards and Technology, Gaithersburg, MD 20899-8401; http://www.codata.org/ and http://physics.nist.gov/constants, Web Version 6.2, retrieved on 18 January 2012)
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    INVERSEFINESTRUCTURE_CONSTANT = 137.035998967

    #
     # Julian date of the Gaia-specific reference epoch J2010 = J2010.0 = JD2455197.5 = 2010-01-01T00:00:00
     # <p>
     # Source: U. Bastian, 5 July 2007, 'Reference systems, conventions, and notations for Gaia', GAIA-CA-SP-ARI-BAS-003-06, issue 6, revision 1, Section 3.5<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    JULIANDATE_J2010 = 2455197.5 # [JD]

    #
     # Number of days per Julian year
     # <p>
     # Source: IAU definition<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    JULIANYEAR_DAY = 365.25 # [day]

    #
     # IAU-recommended value for the rate of change (in degrees per Julian day, calculated from the standard epoch) of the right ascension \alpha_0 of the north pole of rotation of Jupiter. The pair (\alpha_0, \delta_0) denotes standard equatorial coordinates with equinox J2000 at epoch J2000 (the standard epoch is 1.5 January 2000 = JD2451545.0 TDB). The north pole is that pole of rotation that lies on the north side of the invariable plane of the solar system; the approximate coordinates of the north pole of the invariable plane are \alpha_0 = 273.85 deg and \delta_0 = 66.99 degrees
     # <p>
     # Source: B.A. Archinal, et al., 1 February 2011, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009', Celestial Mechanics and Dynamical Astronomy, 109, 101-135 (2011CeMDA.109..101A)<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    JUPITER_NORTHROTATIONALPOLE_RIGHTASCENSIONRATEOFCHANGE = -0.000000177933 # [deg day^-1]

    #
     # IAU-recommended value for the rate of change (in degrees per Julian day, calculated from the standard epoch) of the declination \delta_0 of the north pole of rotation of Jupiter. The pair (\alpha_0, \delta_0) denotes standard equatorial coordinates with equinox J2000 at epoch J2000 (the standard epoch is 1.5 January 2000 = JD2451545.0 TDB). The north pole is that pole of rotation that lies on the north side of the invariable plane of the solar system; the approximate coordinates of the north pole of the invariable plane are \alpha_0 = 273.85 deg and \delta_0 = 66.99 degrees
     # <p>
     # Source: B.A. Archinal, et al., 1 February 2011, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009', Celestial Mechanics and Dynamical Astronomy, 109, 101-135 (2011CeMDA.109..101A)<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    JUPITER_NORTHROTATIONALPOLE_DECLINATIONRATEOFCHANGE = 0.000000066064 # [deg day^-1]

    #
     # Equatorial radius of Jupiter
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    JUPITER_EQUATORIALRADIUS = 7.1492e+7 # [m]

    #
     # Polar radius of Jupiter
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    JUPITER_POLARRADIUS = 6.6854e+7 # [m]

    #
     # Mean mass density of Jupiter
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    JUPITER_MASSDENSITY_MEAN = 1.3262 # [g cm^-3]

    #
     # Radius of the smallest hypothetical sphere around Jupiter which would encompass the body (this is a low-accuracy parameter used in the relativistic model)
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    JUPITER_ENCOMPASSINGSPHERERADIUS = 7.1492e+7 # [m]

    #
     # Post-Newtonian deflection angle of a limb-grazing light ray due to the spherically symmetric part of the gravitational field of Jupiter
     # <p>
     # Source: S.A. Klioner, 2003, 'A Practical Relativistic Model for Microarcsecond Astrometry in Space', AJ, 125, 1580, Equation 64 with cot(x) = cos(x) / sin(x) approximated by x^-1; see also J.H.J. de Bruijne, 19 February 2002, 'Gravitational light deflection', GAIA-JdB-001<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    JUPITER_LIGHTDEFLECTION_LIMB = 16634.0 # [10^-6 arcsec]

    #
     # Geometric transit probability (Jupiter transiting the Sun) for an observer external to the solar system
     # <p>
     # Source: E.g., A. Johansen, 26 March 2002, 'Detection of planetary transits with the Gaia satellite', GAIA-CUO-106, issue 1.3, Section 2.1, Equation 2.2, page 14<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    JUPITER_TRANSITPROBABILITY = 0.098 # [%]

    #
     # Maximum reduction of the solar flux for an observer external to the solar system during a transit of Jupiter
     # <p>
     # Source: E.g., A. Johansen, 26 March 2002, 'Detection of planetary transits with the Gaia satellite', GAIA-CUO-106, issue 1.3, Section 2.2, Equation 2.4, page 14<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    JUPITER_FLUXREDUCTION_MAXIMUM = 1.009 # [%]

    #
     # Maximum transit time of Jupiter (transiting the Sun) for an observer external to the solar system
     # <p>
     # Source: E.g., A. Johansen, 26 March 2002, 'Detection of planetary transits with the Gaia satellite', GAIA-CUO-106, issue 1.3, Section 2.3, Equation 2.5, page 15<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    JUPITER_TRANSITTIME_MAXIMUM = 1.36 # [day]

    #
     # Jupiter-system mass (IAU 2009 CBE value). The planetary mass includes the contribution of its satellites
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    JUPITERSYSTEM_MASS = 1.8986e+27 # [kg]

    #
     # Radial-velocity amplitude of the Sun induced by the Jupiter system for 'an edge-on observer' (i.e., an observer in the orbital plane of the Jupiter system)
     # <p>
     # Source: E.g., A. Johansen, 26 March 2002, 'Detection of planetary transits with the Gaia satellite', GAIA-CUO-106, issue 1.3, Section 1.4, Equation 1.18, page 9<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    JUPITERSYSTEM_RADIALVELOCITYSIGNATURE = 12.5 # [m s^-1]

    #
     # Astrometric signature of the Sun induced by the Jupiter system for an observer located at a distance of 10 pc from the Sun
     # <p>
     # Source: E.g., A. Johansen, 26 March 2002, 'Detection of planetary transits with the Gaia satellite', GAIA-CUO-106, issue 1.3, Section 1.7, Equation 1.22, page 11<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    JUPITERSYSTEM_ASTROMETRICSIGNATURE_10PARSEC = 497.0 # [10^-6 arcsec]

    #
     # Mean orbital semi-major axis of the L2 orbit of the Sun and Earth-Moon system, at the standard epoch J2000.0. The orbital element is referenced to the mean ecliptic and equinox of J2000 at the standard epoch J2000.0. DE405 is based upon the International Celestial Reference Frame (ICRF)
     # <p>
     # Source: F. Mignard, 15 March 2002, 'Considerations on the orbit of Gaia for simulations', GAIA-FM-011, Section 3<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    L2_ORBITALSEMIMAJORAXIS_J2000 = 1.01008088 # [AU]

    #
     # Mean orbital eccentricity of the L2 orbit of the Sun and Earth-Moon system, at the standard epoch J2000.0. The orbital element is referenced to the mean ecliptic and equinox of J2000 at the standard epoch J2000.0. DE405 is based upon the International Celestial Reference Frame (ICRF)
     # <p>
     # Source: See, e.g., F. Mignard, 15 March 2002, 'Considerations on the orbit of Gaia for simulations', GAIA-FM-011, Section 3.2, pages 6-7<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    L2_ORBITALECCENTRICITY_J2000 = 0.01671123

    #
     # Reduced mass \mu of the Sun and Earth-Moon system as used in GAIA-FM-011. Note that the INPOP06 value 328900.561400 gives \mu = 3.04042339E-6
     # <p>
     # Source: F. Mignard, 15 March 2002, 'Considerations on the orbit of Gaia for simulations', GAIA-FM-011, Section 2<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    L2_MU = 3.04042340e-6

    #
     # Central auxiliary parameter in GAIA-FM-011
     # <p>
     # Source: F. Mignard, 15 March 2002, 'Considerations on the orbit of Gaia for simulations', GAIA-FM-011, Equation 22<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    L2_ALPHA = 0.0100447147

    #
     # Normalised separation between L2 and the Earth-Moon barycentre
     # <p>
     # Source: F. Mignard, 15 March 2002, 'Considerations on the orbit of Gaia for simulations', GAIA-FM-011, Equation 23; see also the addition to GAIA-FM-011 dated 25 September 2003<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    L2_RHO = 0.01007824044

    #
     # Auxiliary variable in GAIA-FM-011
     # <p>
     # Source: F. Mignard, 15 March 2002, 'Considerations on the orbit of Gaia for simulations', GAIA-FM-011, Equations 34 and 38; see also the addition to GAIA-FM-011 dated 25 September 2003<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    L2_CAPITALOMEGA = 3.940522185

    #
     # Frequency of the vertical oscillation around L2
     # <p>
     # Source: F. Mignard, 15 March 2002, 'Considerations on the orbit of Gaia for simulations', GAIA-FM-011, Equation 40; see also the addition to GAIA-FM-011 dated 25 September 2003<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    L2_OMEGA = 1.985074856 # [{sidereal year}^-1]

    #
     # Synodic period of the vertical oscillation around L2 in units of days
     # <p>
     # Source: F. Mignard, 15 March 2002, 'Considerations on the orbit of Gaia for simulations', GAIA-FM-011, Equation 40<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    L2_OMEGA_PERIOD = 184.00 # [day]

    #
     # Frequency of the oscillation around L2 in the horizontal plane
     # <p>
     # Source: F. Mignard, 15 March 2002, 'Considerations on the orbit of Gaia for simulations', GAIA-FM-011, Equations 49 and 52; see also the addition to GAIA-FM-011 dated 25 September 2003<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    L2_SIGMA = 2.057014191 # [{sidereal year}^-1]

    #
     # Synodic period of the 'horizontal' elliptic motion around L2 (Equations 70-71 in GAIA-FM-011) in units of days
     # <p>
     # Source: F. Mignard, 15 March 2002, 'Considerations on the orbit of Gaia for simulations', GAIA-FM-011, Section 5.4<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    L2_SIGMA_PERIOD = 177.57 # [day]

    #
     # Axis ratio of the 'horizontal' elliptic motion around L2 (Equations 70-71 in GAIA-FM-011)
     # <p>
     # Source: F. Mignard, 15 March 2002, 'Considerations on the orbit of Gaia for simulations', GAIA-FM-011, Equation 66; see also the addition to GAIA-FM-011 dated 25 September 2003<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    L2_BETA = 3.18722929

    #
     # Maximum radius of the penumbra of the Earth during a solar eclipse as seen from a point 1.0E5 km 'behind' L2. GAIA-FM-011 uses a rounded value of 14000 km
     # <p>
     # Source: F. Mignard, 15 March 2002, 'Considerations on the orbit of Gaia for simulations', GAIA-FM-011, Section 4 (symbol \sigma_2) and Equation 86 (symbol s)<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    L2_PENUMBRARADIUS = 13926.0 # [km]

    #
     # The 'residual quantity' p - q a = q \epsilon, with a = \sigma / \omega, in GAIA-FM-011
     # <p>
     # Source: F. Mignard, 15 March 2002, 'Considerations on the orbit of Gaia for simulations', GAIA-FM-011, Table 1 and Section 6.4<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    L2_QTIMESEPSILON = 5.8e-2

    #
     # Light year expressed in AU
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    LIGHTYEAR_ASTRONOMICALUNIT = 63241.077088 # [AU]

    #
     # Light year expressed in parsecs
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    LIGHTYEAR_PARSEC = 0.306601 # [pc]

    #
     # Light year expressed in meters
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    LIGHTYEAR_METER = 9.460730473e+15 # [m]

    #
     # Velocity of circular rotation at the solar Galactocentric radius (local circular speed). Note: Transactions of the IAU, Volume XIXB, 1985, page 254: V_0 = 220 km s^-1
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    LSR_CIRCULARVELOCITY = 217.520 # [km s^-1]

    #
     # Angular velocity of circular rotation at the solar Galactocentric radius. Note: Transactions of the IAU, Volume XIXB, 1985, page 254: \Omega_0 = 220/8.5 = 25.88 km s^-1 kpc^-1
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    LSR_ANGULARVELOCITY = 27.19 # [km s^-1 kpc^-1]

    #
     # Period of rotation around the Galactic centre at the solar Galactocentric radius for a circular orbit
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    LSR_GALACTICROTATIONPERIOD = 225.95 # [Myr]

    #
     # Maximum (change in) aberration brought about by the acceleration of the LSR relative to the Galactic centre (resulting, if not corrected for, in spurious (apparent) proper motions for extra-Galactic sources in some regions of the sky)
     # <p>
     # Source: J. Kovalevsky, 2003, 'Aberration in proper motions', A&A, 404, 743. See also ESA, July 2000, 'Gaia; Composition, Formation and Evolution of the Galaxy; Concept and Technology Study Report', ESA-SCI(2000)4, Section 1.8.10, page 110<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    LSR_ABERRATION_MAXIMUM = 4.2 # [10^-6 arcsec yr^-1]

    #
     # Magnetic constant (defining constant)
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    MAGNETIC_CONSTANT = 1.25663706143592e-6 # [N A^-2]

    #
     # IAU-recommended value for the rate of change (in degrees per Julian day, calculated from the standard epoch) of the right ascension \alpha_0 of the north pole of rotation of Mars. The pair (\alpha_0, \delta_0) denotes standard equatorial coordinates with equinox J2000 at epoch J2000 (the standard epoch is 1.5 January 2000 = JD2451545.0 TDB). The north pole is that pole of rotation that lies on the north side of the invariable plane of the solar system; the approximate coordinates of the north pole of the invariable plane are \alpha_0 = 273.85 deg and \delta_0 = 66.99 degrees
     # <p>
     # Source: B.A. Archinal, et al., 1 February 2011, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009', Celestial Mechanics and Dynamical Astronomy, 109, 101-135 (2011CeMDA.109..101A)<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    MARS_NORTHROTATIONALPOLE_RIGHTASCENSIONRATEOFCHANGE = -0.0000029049 # [deg day^-1]

    #
     # IAU-recommended value for the rate of change (in degrees per Julian day, calculated from the standard epoch) of the declination \delta_0 of the north pole of rotation of Mars. The pair (\alpha_0, \delta_0) denotes standard equatorial coordinates with equinox J2000 at epoch J2000 (the standard epoch is 1.5 January 2000 = JD2451545.0 TDB). The north pole is that pole of rotation that lies on the north side of the invariable plane of the solar system; the approximate coordinates of the north pole of the invariable plane are \alpha_0 = 273.85 deg and \delta_0 = 66.99 degrees
     # <p>
     # Source: B.A. Archinal, et al., 1 February 2011, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009', Celestial Mechanics and Dynamical Astronomy, 109, 101-135 (2011CeMDA.109..101A)<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    MARS_NORTHROTATIONALPOLE_DECLINATIONRATEOFCHANGE = -0.0000016674 # [deg day^-1]

    #
     # Equatorial radius of Mars
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    MARS_EQUATORIALRADIUS = 3.39619e+6 # [m]

    #
     # Polar radius of Mars. Mars has a significant dichotomy in shape between the northern and southern hemispheres: the average polar radius is listed as 3.37620E6 m in B.A. Archinal, et al., 1 February 2011, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009', Celestial Mechanics and Dynamical Astronomy, 109, 101-135 (2011CeMDA.109..101A); see also D.K. Yeomans (NASA/JPL), 5 November 2008, 'Planets and Pluto: Physical Characteristics', http://ssd.jpl.nasa.gov/?planet_phys_par
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    MARS_POLARRADIUS = 3.37616e+6 # [m]

    #
     # Mean mass density of Mars
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    MARS_MASSDENSITY_MEAN = 3.9340 # [g cm^-3]

    #
     # Radius of the smallest hypothetical sphere around Mars which would encompass the body (this is a low-accuracy parameter used in the relativistic model)
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    MARS_ENCOMPASSINGSPHERERADIUS = 3.39619e+6 # [m]

    #
     # Post-Newtonian deflection angle of a limb-grazing light ray due to the spherically symmetric part of the gravitational field of Mars
     # <p>
     # Source: S.A. Klioner, 2003, 'A Practical Relativistic Model for Microarcsecond Astrometry in Space', AJ, 125, 1580, Equation 64 with cot(x) = cos(x) / sin(x) approximated by x^-1; see also J.H.J. de Bruijne, 19 February 2002, 'Gravitational light deflection', GAIA-JdB-001<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    MARS_LIGHTDEFLECTION_LIMB = 116.0 # [10^-6 arcsec]

    #
     # Geometric transit probability (Mars transiting the Sun) for an observer external to the solar system
     # <p>
     # Source: E.g., A. Johansen, 26 March 2002, 'Detection of planetary transits with the Gaia satellite', GAIA-CUO-106, issue 1.3, Section 2.1, Equation 2.2, page 14<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    MARS_TRANSITPROBABILITY = 0.307 # [%]

    #
     # Maximum reduction of the solar flux for an observer external to the solar system during a transit of Mars
     # <p>
     # Source: E.g., A. Johansen, 26 March 2002, 'Detection of planetary transits with the Gaia satellite', GAIA-CUO-106, issue 1.3, Section 2.2, Equation 2.4, page 14<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    MARS_FLUXREDUCTION_MAXIMUM = 0.002 # [%]

    #
     # Maximum transit time of Mars (transiting the Sun) for an observer external to the solar system
     # <p>
     # Source: E.g., A. Johansen, 26 March 2002, 'Detection of planetary transits with the Gaia satellite', GAIA-CUO-106, issue 1.3, Section 2.3, Equation 2.5, page 15<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    MARS_TRANSITTIME_MAXIMUM = 0.67 # [day]

    #
     # Mars-system mass (IAU 2009 CBE value). The planetary mass includes the contribution of its satellites
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    MARSSYSTEM_MASS = 6.4174e+23 # [kg]

    #
     # Radial-velocity amplitude of the Sun induced by the Mars system for 'an edge-on observer' (i.e., an observer in the orbital plane of the Mars system)
     # <p>
     # Source: E.g., A. Johansen, 26 March 2002, 'Detection of planetary transits with the Gaia satellite', GAIA-CUO-106, issue 1.3, Section 1.4, Equation 1.18, page 9<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    MARSSYSTEM_RADIALVELOCITYSIGNATURE = 0.008 # [m s^-1]

    #
     # Astrometric signature of the Sun induced by the Mars system for an observer located at a distance of 10 pc from the Sun
     # <p>
     # Source: E.g., A. Johansen, 26 March 2002, 'Detection of planetary transits with the Gaia satellite', GAIA-CUO-106, issue 1.3, Section 1.7, Equation 1.22, page 11<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    MARSSYSTEM_ASTROMETRICSIGNATURE_10PARSEC = 0.049 # [10^-6 arcsec]

    #
     # IAU-recommended value for the rate of change (in degrees per Julian day, calculated from the standard epoch) of the right ascension \alpha_0 of the north pole of rotation of Mercury. The pair (\alpha_0, \delta_0) denotes standard equatorial coordinates with equinox J2000 at epoch J2000 (the standard epoch is 1.5 January 2000 = JD2451545.0 TDB). The north pole is that pole of rotation that lies on the north side of the invariable plane of the solar system; the approximate coordinates of the north pole of the invariable plane are \alpha_0 = 273.85 deg and \delta_0 = 66.99 degrees
     # <p>
     # Source: B.A. Archinal, et al., 1 February 2011, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009', Celestial Mechanics and Dynamical Astronomy, 109, 101-135 (2011CeMDA.109..101A)<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    MERCURY_NORTHROTATIONALPOLE_RIGHTASCENSIONRATEOFCHANGE = -0.0000008980 # [deg day^-1]

    #
     # IAU-recommended value for the rate of change (in degrees per Julian day, calculated from the standard epoch) of the declination \delta_0 of the north pole of rotation of Mercury. The pair (\alpha_0, \delta_0) denotes standard equatorial coordinates with equinox J2000 at epoch J2000 (the standard epoch is 1.5 January 2000 = JD2451545.0 TDB). The north pole is that pole of rotation that lies on the north side of the invariable plane of the solar system; the approximate coordinates of the north pole of the invariable plane are \alpha_0 = 273.85 deg and \delta_0 = 66.99 degrees
     # <p>
     # Source: B.A. Archinal, et al., 1 February 2011, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009', Celestial Mechanics and Dynamical Astronomy, 109, 101-135 (2011CeMDA.109..101A)<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    MERCURY_NORTHROTATIONALPOLE_DECLINATIONRATEOFCHANGE = -0.0000001342 # [deg day^-1]

    #
     # Equatorial radius of Mercury
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    MERCURY_EQUATORIALRADIUS = 2.4397e+6 # [m]

    #
     # Polar radius of Mercury
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    MERCURY_POLARRADIUS = 2.4397e+6 # [m]

    #
     # Mean mass density of Mercury
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    MERCURY_MASSDENSITY_MEAN = 5.427 # [g cm^-3]

    #
     # Radius of the smallest hypothetical sphere around Mercury which would encompass the body (this is a low-accuracy parameter used in the relativistic model)
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    MERCURY_ENCOMPASSINGSPHERERADIUS = 2.440e+6 # [m]

    #
     # Post-Newtonian deflection angle of a limb-grazing light ray due to the spherically symmetric part of the gravitational field of Mercury
     # <p>
     # Source: S.A. Klioner, 2003, 'A Practical Relativistic Model for Microarcsecond Astrometry in Space', AJ, 125, 1580, Equation 64 with cot(x) = cos(x) / sin(x) approximated by x^-1; see also J.H.J. de Bruijne, 19 February 2002, 'Gravitational light deflection', GAIA-JdB-001<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    MERCURY_LIGHTDEFLECTION_LIMB = 83.0 # [10^-6 arcsec]

    #
     # Geometric transit probability (Mercury transiting the Sun) for an observer external to the solar system
     # <p>
     # Source: E.g., A. Johansen, 26 March 2002, 'Detection of planetary transits with the Gaia satellite', GAIA-CUO-106, issue 1.3, Section 2.1, Equation 2.2, page 14<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    MERCURY_TRANSITPROBABILITY = 1.206 # [%]

    #
     # Maximum reduction of the solar flux for an observer external to the solar system during a transit of Mercury
     # <p>
     # Source: E.g., A. Johansen, 26 March 2002, 'Detection of planetary transits with the Gaia satellite', GAIA-CUO-106, issue 1.3, Section 2.2, Equation 2.4, page 14<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    MERCURY_FLUXREDUCTION_MAXIMUM = 0.001 # [%]

    #
     # Maximum transit time of Mercury (transiting the Sun) for an observer external to the solar system
     # <p>
     # Source: E.g., A. Johansen, 26 March 2002, 'Detection of planetary transits with the Gaia satellite', GAIA-CUO-106, issue 1.3, Section 2.3, Equation 2.5, page 15<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    MERCURY_TRANSITTIME_MAXIMUM = 0.34 # [day]

    #
     # Mercury(-system) mass (IAU 2009 CBE value)
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    MERCURYSYSTEM_MASS = 3.301e+23 # [kg]

    #
     # Radial-velocity amplitude of the Sun induced by Mercury for 'an edge-on observer' (i.e., an observer in the orbital plane of Mercury)
     # <p>
     # Source: E.g., A. Johansen, 26 March 2002, 'Detection of planetary transits with the Gaia satellite', GAIA-CUO-106, issue 1.3, Section 1.4, Equation 1.18, page 9<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    MERCURYSYSTEM_RADIALVELOCITYSIGNATURE = 0.008 # [m s^-1]

    #
     # Astrometric signature of the Sun induced by Mercury for an observer located at a distance of 10 pc from the Sun
     # <p>
     # Source: E.g., A. Johansen, 26 March 2002, 'Detection of planetary transits with the Gaia satellite', GAIA-CUO-106, issue 1.3, Section 1.7, Equation 1.22, page 11<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    MERCURYSYSTEM_ASTROMETRICSIGNATURE_10PARSEC = 0.006 # [10^-6 arcsec]

    #
     # One micro-arcsecond in units of radians
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    MICROARCSECOND_RADIAN = 4.84813681109536e-12 # [rad]

    #
     # One milli-arcsecond in units of radians
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    MILLIARCSECOND_RADIAN = 4.84813681109536e-9 # [rad]

    #
     # Lunar diurnal parallax. Formally, this parameter is defined as the ratio of a fictitious mean equatorial radius of the Earth to the perturbed mean distance of the Moon; the ratio F_2 of the perturbed mean distance to the Moon (the perturbation being due to the Sun) to the two-body mean distance of the Moon (with the Sun not present and constant mean motion) equals 0.999093141975298 (see T.D. Moyer, 15 May 1971, 'Mathematical formulation of the Double-Precision Orbit Determination Programme (DPODP)', NASA JPL Technical Report 32-1527, pages 25-26)
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    MOON_DIURNALPARALLAX = 3422.595 # [arcsec]

    #
     # Selenocentric gravitational constant (TCB-compatible value)
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    MOON_GM = 4.902800e+12 # [m^3 s^-2]

    #
     # Lunar mass (do not use for high-precision (orbit) calculations)
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    MOON_MASS = 7.346e+22 # [kg]

    #
     # Mean Moon mass density
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    MOON_MASSDENSITY_MEAN = 3.344 # [g cm^-3]

    #
     # Radius of the smallest hypothetical sphere around the Moon which would encompass the body (this is a low-accuracy parameter used in the relativistic model)
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    MOON_ENCOMPASSINGSPHERERADIUS = 1738000.0 # [m]

    #
     # Radius of the smallest hypothetical sphere around J1 (Io) which would encompass the body (this is a low-accuracy parameter used in the relativistic model)
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    MOONJ1_ENCOMPASSINGSPHERERADIUS = 1.8215e+6 # [m]

    #
     # Mean mass density of J1 (Io)
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    MOONJ1_MASSDENSITY_MEAN = 3.528 # [g cm^-3]

    #
     # Post-Newtonian deflection angle of a limb-grazing light ray due to the spherically symmetric part of the gravitational field of J1 (Io)
     # <p>
     # Source: S.A. Klioner, 2003, 'A Practical Relativistic Model for Microarcsecond Astrometry in Space', AJ, 125, 1580, Equation 64 with cot(x) = cos(x) / sin(x) approximated by x^-1; see also J.H.J. de Bruijne, 19 February 2002, 'Gravitational light deflection', GAIA-JdB-001<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    MOONJ1_LIGHTDEFLECTION_LIMB = 30.0 # [10^-6 arcsec]

    #
     # Radius of the smallest hypothetical sphere around J2 (Europa) which would encompass the body (this is a low-accuracy parameter used in the relativistic model)
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    MOONJ2_ENCOMPASSINGSPHERERADIUS = 1.5608e+6 # [m]

    #
     # Mean mass density of J2 (Europa)
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    MOONJ2_MASSDENSITY_MEAN = 3.013 # [g cm^-3]

    #
     # Post-Newtonian deflection angle of a limb-grazing light ray due to the spherically symmetric part of the gravitational field of J2 (Europa)
     # <p>
     # Source: S.A. Klioner, 2003, 'A Practical Relativistic Model for Microarcsecond Astrometry in Space', AJ, 125, 1580, Equation 64 with cot(x) = cos(x) / sin(x) approximated by x^-1; see also J.H.J. de Bruijne, 19 February 2002, 'Gravitational light deflection', GAIA-JdB-001<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    MOONJ2_LIGHTDEFLECTION_LIMB = 19.0 # [10^-6 arcsec]

    #
     # Radius of the smallest hypothetical sphere around J3 (Ganymede) which would encompass the body (this is a low-accuracy parameter used in the relativistic model)
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    MOONJ3_ENCOMPASSINGSPHERERADIUS = 2.6312e+6 # [m]

    #
     # Mean mass density of J3 (Ganymede)
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    MOONJ3_MASSDENSITY_MEAN = 1.942 # [g cm^-3]

    #
     # Post-Newtonian deflection angle of a limb-grazing light ray due to the spherically symmetric part of the gravitational field of J3 (Ganymede)
     # <p>
     # Source: S.A. Klioner, 2003, 'A Practical Relativistic Model for Microarcsecond Astrometry in Space', AJ, 125, 1580, Equation 64 with cot(x) = cos(x) / sin(x) approximated by x^-1; see also J.H.J. de Bruijne, 19 February 2002, 'Gravitational light deflection', GAIA-JdB-001<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    MOONJ3_LIGHTDEFLECTION_LIMB = 34.0 # [10^-6 arcsec]

    #
     # Radius of the smallest hypothetical sphere around J4 (Callisto) which would encompass the body (this is a low-accuracy parameter used in the relativistic model)
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    MOONJ4_ENCOMPASSINGSPHERERADIUS = 2.4103e+6 # [m]

    #
     # Mean mass density of J4 (Callisto)
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    MOONJ4_MASSDENSITY_MEAN = 1.834 # [g cm^-3]

    #
     # Post-Newtonian deflection angle of a limb-grazing light ray due to the spherically symmetric part of the gravitational field of J4 (Callisto)
     # <p>
     # Source: S.A. Klioner, 2003, 'A Practical Relativistic Model for Microarcsecond Astrometry in Space', AJ, 125, 1580, Equation 64 with cot(x) = cos(x) / sin(x) approximated by x^-1; see also J.H.J. de Bruijne, 19 February 2002, 'Gravitational light deflection', GAIA-JdB-001<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    MOONJ4_LIGHTDEFLECTION_LIMB = 27.0 # [10^-6 arcsec]

    #
     # Radius of the smallest hypothetical sphere around N1 (Triton) which would encompass the body (this is a low-accuracy parameter used in the relativistic model)
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    MOONN1_ENCOMPASSINGSPHERERADIUS = 1.3526e+6 # [m]

    #
     # Mean mass density of N1 (Triton)
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    MOONN1_MASSDENSITY_MEAN = 2.064 # [g cm^-3]

    #
     # Post-Newtonian deflection angle of a limb-grazing light ray due to the spherically symmetric part of the gravitational field of N1 (Triton)
     # <p>
     # Source: S.A. Klioner, 2003, 'A Practical Relativistic Model for Microarcsecond Astrometry in Space', AJ, 125, 1580, Equation 64 with cot(x) = cos(x) / sin(x) approximated by x^-1; see also J.H.J. de Bruijne, 19 February 2002, 'Gravitational light deflection', GAIA-JdB-001<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    MOONN1_LIGHTDEFLECTION_LIMB = 10.0 # [10^-6 arcsec]

    #
     # Radius of the smallest hypothetical sphere around S3 (Tethys) which would encompass the body (this is a low-accuracy parameter used in the relativistic model)
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    MOONS3_ENCOMPASSINGSPHERERADIUS = 5.310e+5 # [m]

    #
     # Mean mass density of S3 (Tethys)
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    MOONS3_MASSDENSITY_MEAN = 0.985 # [g cm^-3]

    #
     # Post-Newtonian deflection angle of a limb-grazing light ray due to the spherically symmetric part of the gravitational field of S3 (Tethys)
     # <p>
     # Source: S.A. Klioner, 2003, 'A Practical Relativistic Model for Microarcsecond Astrometry in Space', AJ, 125, 1580, Equation 64 with cot(x) = cos(x) / sin(x) approximated by x^-1; see also J.H.J. de Bruijne, 19 February 2002, 'Gravitational light deflection', GAIA-JdB-001<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    MOONS3_LIGHTDEFLECTION_LIMB = 1.0 # [10^-6 arcsec]

    #
     # Radius of the smallest hypothetical sphere around S4 (Dione) which would encompass the body (this is a low-accuracy parameter used in the relativistic model)
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    MOONS4_ENCOMPASSINGSPHERERADIUS = 5.61e+5 # [m]

    #
     # Mean mass density of S4 (Dione)
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    MOONS4_MASSDENSITY_MEAN = 1.478 # [g cm^-3]

    #
     # Post-Newtonian deflection angle of a limb-grazing light ray due to the spherically symmetric part of the gravitational field of S4 (Dione)
     # <p>
     # Source: S.A. Klioner, 2003, 'A Practical Relativistic Model for Microarcsecond Astrometry in Space', AJ, 125, 1580, Equation 64 with cot(x) = cos(x) / sin(x) approximated by x^-1; see also J.H.J. de Bruijne, 19 February 2002, 'Gravitational light deflection', GAIA-JdB-001<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    MOONS4_LIGHTDEFLECTION_LIMB = 1.0 # [10^-6 arcsec]

    #
     # Radius of the smallest hypothetical sphere around S5 (Rhea) which would encompass the body (this is a low-accuracy parameter used in the relativistic model)
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    MOONS5_ENCOMPASSINGSPHERERADIUS = 7.64e+5 # [m]

    #
     # Mean mass density of S5 (Rhea)
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    MOONS5_MASSDENSITY_MEAN = 1.237 # [g cm^-3]

    #
     # Post-Newtonian deflection angle of a limb-grazing light ray due to the spherically symmetric part of the gravitational field of S5 (Rhea)
     # <p>
     # Source: S.A. Klioner, 2003, 'A Practical Relativistic Model for Microarcsecond Astrometry in Space', AJ, 125, 1580, Equation 64 with cot(x) = cos(x) / sin(x) approximated by x^-1; see also J.H.J. de Bruijne, 19 February 2002, 'Gravitational light deflection', GAIA-JdB-001<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    MOONS5_LIGHTDEFLECTION_LIMB = 2.0 # [10^-6 arcsec]

    #
     # Radius of the smallest hypothetical sphere around S6 (Titan) which would encompass the body (this is a low-accuracy parameter used in the relativistic model)
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    MOONS6_ENCOMPASSINGSPHERERADIUS = 2.575e+6 # [m]

    #
     # Mean mass density of S6 (Titan)
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    MOONS6_MASSDENSITY_MEAN = 1.882 # [g cm^-3]

    #
     # Post-Newtonian deflection angle of a limb-grazing light ray due to the spherically symmetric part of the gravitational field of S6 (Titan)
     # <p>
     # Source: S.A. Klioner, 2003, 'A Practical Relativistic Model for Microarcsecond Astrometry in Space', AJ, 125, 1580, Equation 64 with cot(x) = cos(x) / sin(x) approximated by x^-1; see also J.H.J. de Bruijne, 19 February 2002, 'Gravitational light deflection', GAIA-JdB-001<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    MOONS6_LIGHTDEFLECTION_LIMB = 32.0 # [10^-6 arcsec]

    #
     # Radius of the smallest hypothetical sphere around S8 (Iapetus) which would encompass the body (this is a low-accuracy parameter used in the relativistic model)
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    MOONS8_ENCOMPASSINGSPHERERADIUS = 7.34e+5 # [m]

    #
     # Mean mass density of S8 (Iapetus)
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    MOONS8_MASSDENSITY_MEAN = 1.089 # [g cm^-3]

    #
     # Post-Newtonian deflection angle of a limb-grazing light ray due to the spherically symmetric part of the gravitational field of S8 (Iapetus)
     # <p>
     # Source: S.A. Klioner, 2003, 'A Practical Relativistic Model for Microarcsecond Astrometry in Space', AJ, 125, 1580, Equation 64 with cot(x) = cos(x) / sin(x) approximated by x^-1; see also J.H.J. de Bruijne, 19 February 2002, 'Gravitational light deflection', GAIA-JdB-001<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    MOONS8_LIGHTDEFLECTION_LIMB = 2.0 # [10^-6 arcsec]

    #
     # Radius of the smallest hypothetical sphere around U1 (Ariel) which would encompass the body (this is a low-accuracy parameter used in the relativistic model)
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    MOONU1_ENCOMPASSINGSPHERERADIUS = 5.789e+5 # [m]

    #
     # Mean mass density of U1 (Ariel)
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    MOONU1_MASSDENSITY_MEAN = 1.593 # [g cm^-3]

    #
     # Post-Newtonian deflection angle of a limb-grazing light ray due to the spherically symmetric part of the gravitational field of U1 (Ariel)
     # <p>
     # Source: S.A. Klioner, 2003, 'A Practical Relativistic Model for Microarcsecond Astrometry in Space', AJ, 125, 1580, Equation 64 with cot(x) = cos(x) / sin(x) approximated by x^-1; see also J.H.J. de Bruijne, 19 February 2002, 'Gravitational light deflection', GAIA-JdB-001<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    MOONU1_LIGHTDEFLECTION_LIMB = 1.0 # [10^-6 arcsec]

    #
     # Radius of the smallest hypothetical sphere around U2 (Umbriel) which would encompass the body (this is a low-accuracy parameter used in the relativistic model)
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    MOONU2_ENCOMPASSINGSPHERERADIUS = 5.847e+5 # [m]

    #
     # Mean mass density of U2 (Umbriel)
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    MOONU2_MASSDENSITY_MEAN = 1.458 # [g cm^-3]

    #
     # Post-Newtonian deflection angle of a limb-grazing light ray due to the spherically symmetric part of the gravitational field of U2 (Umbriel)
     # <p>
     # Source: S.A. Klioner, 2003, 'A Practical Relativistic Model for Microarcsecond Astrometry in Space', AJ, 125, 1580, Equation 64 with cot(x) = cos(x) / sin(x) approximated by x^-1; see also J.H.J. de Bruijne, 19 February 2002, 'Gravitational light deflection', GAIA-JdB-001<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    MOONU2_LIGHTDEFLECTION_LIMB = 1.0 # [10^-6 arcsec]

    #
     # Radius of the smallest hypothetical sphere around U3 (Titania) which would encompass the body (this is a low-accuracy parameter used in the relativistic model)
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    MOONU3_ENCOMPASSINGSPHERERADIUS = 7.889e+5 # [m]

    #
     # Mean mass density of U3 (Titania)
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    MOONU3_MASSDENSITY_MEAN = 1.663 # [g cm^-3]

    #
     # Post-Newtonian deflection angle of a limb-grazing light ray due to the spherically symmetric part of the gravitational field of U3 (Titania)
     # <p>
     # Source: S.A. Klioner, 2003, 'A Practical Relativistic Model for Microarcsecond Astrometry in Space', AJ, 125, 1580, Equation 64 with cot(x) = cos(x) / sin(x) approximated by x^-1; see also J.H.J. de Bruijne, 19 February 2002, 'Gravitational light deflection', GAIA-JdB-001<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    MOONU3_LIGHTDEFLECTION_LIMB = 3.0 # [10^-6 arcsec]

    #
     # Radius of the smallest hypothetical sphere around U4 (Oberon) which would encompass the body (this is a low-accuracy parameter used in the relativistic model)
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    MOONU4_ENCOMPASSINGSPHERERADIUS = 7.614e+5 # [m]

    #
     # Mean mass density of U4 (Oberon)
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    MOONU4_MASSDENSITY_MEAN = 1.559 # [g cm^-3]

    #
     # Post-Newtonian deflection angle of a limb-grazing light ray due to the spherically symmetric part of the gravitational field of U4 (Oberon)
     # <p>
     # Source: S.A. Klioner, 2003, 'A Practical Relativistic Model for Microarcsecond Astrometry in Space', AJ, 125, 1580, Equation 64 with cot(x) = cos(x) / sin(x) approximated by x^-1; see also J.H.J. de Bruijne, 19 February 2002, 'Gravitational light deflection', GAIA-JdB-001<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    MOONU4_LIGHTDEFLECTION_LIMB = 2.0 # [10^-6 arcsec]

    #
     # IAU-recommended value for the right ascension \alpha_0 of the north pole of rotation of Neptune. The pair (\alpha_0, \delta_0) denotes standard equatorial coordinates with equinox J2000 at epoch J2000 (the standard epoch is 1.5 January 2000 = JD2451545.0 TDB). The north pole is that pole of rotation that lies on the north side of the invariable plane of the solar system; the approximate coordinates of the north pole of the invariable plane are \alpha_0 = 273.85 deg and \delta_0 = 66.99 degrees. The numerical value is based on an approximate formula, accurate to first order in 'd' (see below); the true equation is \alpha_0 = 299.36 + 0.70 * sin(357.85 + 52.316 * d / 36525), where d is the number of Julian days calculated from the standard epoch. The numerical accuracy of this equation is 0.1 deg
     # <p>
     # Source: B.A. Archinal, et al., 1 February 2011, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009', Celestial Mechanics and Dynamical Astronomy, 109, 101-135 (2011CeMDA.109..101A)<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    NEPTUNE_NORTHROTATIONALPOLE_RIGHTASCENSION = 299.334 # [deg]

    #
     # IAU-recommended value for the rate of change (in degrees per Julian day, calculated from the standard epoch) of the right ascension \alpha_0 of the north pole of rotation of Neptune. The pair (\alpha_0, \delta_0) denotes standard equatorial coordinates with equinox J2000 at epoch J2000 (the standard epoch is 1.5 January 2000 = JD2451545.0 TDB). The north pole is that pole of rotation that lies on the north side of the invariable plane of the solar system; the approximate coordinates of the north pole of the invariable plane are \alpha_0 = 273.85 deg and \delta_0 = 66.99 degrees. The numerical value is based on an approximate formula, accurate to first order in 'd' (see below); the true equation is \alpha_0 = 299.36 + 0.70 * sin(357.85 + 52.316 * d / 36525), where d is the number of Julian days calculated from the standard epoch. The numerical accuracy of this equation is 0.1 deg
     # <p>
     # Source: B.A. Archinal, et al., 1 February 2011, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009', Celestial Mechanics and Dynamical Astronomy, 109, 101-135 (2011CeMDA.109..101A)<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    NEPTUNE_NORTHROTATIONALPOLE_RIGHTASCENSIONRATEOFCHANGE = 0.0000174869 # [deg day^-1]

    #
     # IAU-recommended value for the declination \delta_0 of the north pole of rotation of Neptune. The pair (\alpha_0, \delta_0) denotes standard equatorial coordinates with equinox J2000 at epoch J2000 (the standard epoch is 1.5 January 2000 = JD2451545.0 TDB). The north pole is that pole of rotation that lies on the north side of the invariable plane of the solar system; the approximate coordinates of the north pole of the invariable plane are \alpha_0 = 273.85 deg and \delta_0 = 66.99 degrees. The numerical value is based on an approximate formula, accurate to first order in 'd' (see below); the true equation is \delta_0 = 43.46 - 0.51 * cos(357.85 + 52.316 * d / 36525), where d is the number of Julian days calculated from the standard epoch. The numerical accuracy of this equation is 0.1 deg
     # <p>
     # Source: B.A. Archinal, et al., 1 February 2011, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009', Celestial Mechanics and Dynamical Astronomy, 109, 101-135 (2011CeMDA.109..101A)<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    NEPTUNE_NORTHROTATIONALPOLE_DECLINATION = 42.950 # [deg]

    #
     # IAU-recommended value for the rate of change (in degrees per Julian day, calculated from the standard epoch) of the declination \delta_0 of the north pole of rotation of Neptune. The pair (\alpha_0, \delta_0) denotes standard equatorial coordinates with equinox J2000 at epoch J2000 (the standard epoch is 1.5 January 2000 = JD2451545.0 TDB). The north pole is that pole of rotation that lies on the north side of the invariable plane of the solar system; the approximate coordinates of the north pole of the invariable plane are \alpha_0 = 273.85 deg and \delta_0 = 66.99 degrees. The numerical value is based on an approximate formula, accurate to first order in 'd' (see below); the true equation is \delta_0 = 43.46 - 0.51 * cos(357.85 + 52.316 * d / 36525), where d is the number of Julian days calculated from the standard epoch. The numerical accuracy of this equation is 0.1 deg
     # <p>
     # Source: B.A. Archinal, et al., 1 February 2011, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009', Celestial Mechanics and Dynamical Astronomy, 109, 101-135 (2011CeMDA.109..101A)<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    NEPTUNE_NORTHROTATIONALPOLE_DECLINATIONRATEOFCHANGE = -0.0000004783 # [deg day^-1]

    #
     # IAU-recommended value for the ephemeris position of the prime meridian of Neptune. The prime meridian refers to the rotation of the magnetic field System III. The location of the prime meridian is specified by the angle that is measured along the planet's equator in an easterly direction with respect to the planet's north pole from the node Q (located at right ascension 90 deg + \alpha_0, where \alpha_0 denotes the right ascension of the north pole of rotation) of the planet's equator on the standard equator to the point B where the prime meridian crosses the planet's equator. The right ascension of the point Q is 90 deg + \alpha_0 and the inclination of the planet's equator to the standard equator is 90 deg - \delta_0, where \delta_0 denotes the declination of the north pole of rotation. (The pair (\alpha_0, \delta_0) denotes the standard equatorial coordinates, with equinox J2000 at epoch J2000 (the standard epoch is 1.5 January 2000 = JD2451545.0 TDB), of the north pole of rotation, which itself is defined as that pole of rotation that lies on the north side of the invariable plane of the solar system; the approximate coordinates of the north pole of the invariable plane are \alpha_0 = 273.85 deg and \delta_0 = 66.99 degrees.) Because the prime meridian is assumed to rotate uniformly with the planet, W accordingly varies linearly with time. In addition, \alpha_0, \delta_0, and W may vary with time due to a precession of the axis of rotation of the planet. If W increases with time, the planet has a direct (or prograde) rotation; if W decreases with time, the rotation is said to be retrograde. The numerical value is based on an approximate formula, accurate to first order in 'd' (see below); the true equation is W = 253.18 + 536.3128492 * d - 0.48 * sin(357.85 + 52.316 * d / 36525), where d is the number of Julian days calculated from the standard epoch. The numerical accuracy of this equation is 0.1 deg
     # <p>
     # Source: B.A. Archinal, et al., 1 February 2011, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009', Celestial Mechanics and Dynamical Astronomy, 109, 101-135 (2011CeMDA.109..101A)<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    NEPTUNE_PRIMEMERIDIAN_EPHEMERISPOSITION = 253.198 # [deg]

    #
     # IAU-recommended value for the rate of change (in degrees per Julian day, calculated from the standard epoch of 1.5 January 2000 = JD2451545.0 TDB) of the ephemeris position of the prime meridian of Neptune. The prime meridian refers to the rotation of the magnetic field System III. The location of the prime meridian is specified by the angle that is measured along the planet's equator in an easterly direction with respect to the planet's north pole from the node Q (located at right ascension 90 deg + \alpha_0, where \alpha_0 denotes the right ascension of the north pole of rotation) of the planet's equator on the standard equator to the point B where the prime meridian crosses the planet's equator. The right ascension of the point Q is 90 deg + \alpha_0 and the inclination of the planet's equator to the standard equator is 90 deg - \delta_0, where \delta_0 denotes the declination of the north pole of rotation. (The pair (\alpha_0, \delta_0) denotes the standard equatorial coordinates, with equinox J2000 at epoch J2000 (the standard epoch is 1.5 January 2000 = JD2451545.0 TDB), of the north pole of rotation, which itself is defined as that pole of rotation that lies on the north side of the invariable plane of the solar system; the approximate coordinates of the north pole of the invariable plane are \alpha_0 = 273.85 deg and \delta_0 = 66.99 degrees.) Because the prime meridian is assumed to rotate uniformly with the planet, W accordingly varies linearly with time. In addition, \alpha_0, \delta_0, and W may vary with time due to a precession of the axis of rotation of the planet. If W increases with time, the planet has a direct (or prograde) rotation; if W decreases with time, the rotation is said to be retrograde. The numerical value is based on an approximate formula, accurate to first order in 'd' (see below); the true equation is W = 253.18 + 536.3128492 * d - 0.48 * sin(357.85 + 52.316 * d / 36525), where d is the number of Julian days calculated from the standard epoch. The numerical accuracy of this equation is 0.1 deg
     # <p>
     # Source: B.A. Archinal, et al., 1 February 2011, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009', Celestial Mechanics and Dynamical Astronomy, 109, 101-135 (2011CeMDA.109..101A)<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    NEPTUNE_PRIMEMERIDIAN_EPHEMERISPOSITIONRATEOFCHANGE = 536.3128372090 # [deg day^-1]

    #
     # Equatorial radius of Neptune
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    NEPTUNE_EQUATORIALRADIUS = 2.4764e+7 # [m]

    #
     # Polar radius of Neptune
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    NEPTUNE_POLARRADIUS = 2.4341e+7 # [m]

    #
     # Mean mass density of Neptune
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    NEPTUNE_MASSDENSITY_MEAN = 1.638 # [g cm^-3]

    #
     # Radius of the smallest hypothetical sphere around Neptune which would encompass the body (this is a low-accuracy parameter used in the relativistic model)
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    NEPTUNE_ENCOMPASSINGSPHERERADIUS = 2.4764e+7 # [m]

    #
     # Post-Newtonian deflection angle of a limb-grazing light ray due to the spherically symmetric part of the gravitational field of Neptune
     # <p>
     # Source: S.A. Klioner, 2003, 'A Practical Relativistic Model for Microarcsecond Astrometry in Space', AJ, 125, 1580, Equation 64 with cot(x) = cos(x) / sin(x) approximated by x^-1; see also J.H.J. de Bruijne, 19 February 2002, 'Gravitational light deflection', GAIA-JdB-001<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    NEPTUNE_LIGHTDEFLECTION_LIMB = 2548.0 # [10^-6 arcsec]

    #
     # Geometric transit probability (Neptune transiting the Sun) for an observer external to the solar system
     # <p>
     # Source: E.g., A. Johansen, 26 March 2002, 'Detection of planetary transits with the Gaia satellite', GAIA-CUO-106, issue 1.3, Section 2.1, Equation 2.2, page 14<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    NEPTUNE_TRANSITPROBABILITY = 0.016 # [%]

    #
     # Maximum reduction of the solar flux for an observer external to the solar system during a transit of Neptune
     # <p>
     # Source: E.g., A. Johansen, 26 March 2002, 'Detection of planetary transits with the Gaia satellite', GAIA-CUO-106, issue 1.3, Section 2.2, Equation 2.4, page 14<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    NEPTUNE_FLUXREDUCTION_MAXIMUM = 0.125 # [%]

    #
     # Maximum transit time of Neptune (transiting the Sun) for an observer external to the solar system
     # <p>
     # Source: E.g., A. Johansen, 26 March 2002, 'Detection of planetary transits with the Gaia satellite', GAIA-CUO-106, issue 1.3, Section 2.3, Equation 2.5, page 15<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    NEPTUNE_TRANSITTIME_MAXIMUM = 3.07 # [day]

    #
     # Neptune-system mass (IAU 2009 CBE value). The planetary mass includes the contribution of its satellites
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    NEPTUNESYSTEM_MASS = 1.0244e+26 # [kg]

    #
     # Radial-velocity amplitude of the Sun induced by the Neptune system for 'an edge-on observer' (i.e., an observer in the orbital plane of the Neptune system)
     # <p>
     # Source: E.g., A. Johansen, 26 March 2002, 'Detection of planetary transits with the Gaia satellite', GAIA-CUO-106, issue 1.3, Section 1.4, Equation 1.18, page 9<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    NEPTUNESYSTEM_RADIALVELOCITYSIGNATURE = 0.3 # [m s^-1]

    #
     # Astrometric signature of the Sun induced by the Neptune system for an observer located at a distance of 10 pc from the Sun
     # <p>
     # Source: E.g., A. Johansen, 26 March 2002, 'Detection of planetary transits with the Gaia satellite', GAIA-CUO-106, issue 1.3, Section 1.7, Equation 1.22, page 11<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    NEPTUNESYSTEM_ASTROMETRICSIGNATURE_10PARSEC = 155.0 # [10^-6 arcsec]

    #
     # Parsec expressed in m
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    PARSEC_METER = 3.085677581305729e+16 # [m]

    #
     # Parsec expressed in AU
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    PARSEC_ASTRONOMICALUNIT = 206264.806247096 # [AU]

    #
     # Mean volumetric radius of Pluto
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    PLUTO_VOLUMETRICRADIUS = 1.195e+6 # [m]

    #
     # Polar radius of Pluto
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    PLUTO_POLARRADIUS = 1.195e+6 # [m]

    #
     # Mean mass density of Pluto (rough estimate)
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    PLUTO_MASSDENSITY_MEAN = 1.83 # [g cm^-3]

    #
     # Radius of the smallest hypothetical sphere around Pluto which would encompass the body (this is a low-accuracy parameter used in the relativistic model)
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    PLUTO_ENCOMPASSINGSPHERERADIUS = 1.195e+6 # [m]

    #
     # Post-Newtonian deflection angle of a limb-grazing light ray due to the spherically symmetric part of the gravitational field of Pluto
     # <p>
     # Source: S.A. Klioner, 2003, 'A Practical Relativistic Model for Microarcsecond Astrometry in Space', AJ, 125, 1580, Equation 64 with cot(x) = cos(x) / sin(x) approximated by x^-1; see also J.H.J. de Bruijne, 19 February 2002, 'Gravitational light deflection', GAIA-JdB-001<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    PLUTO_LIGHTDEFLECTION_LIMB = 7.0 # [10^-6 arcsec]

    #
     # Geometric transit probability (Pluto transiting the Sun) for an observer external to the solar system
     # <p>
     # Source: E.g., A. Johansen, 26 March 2002, 'Detection of planetary transits with the Gaia satellite', GAIA-CUO-106, issue 1.3, Section 2.1, Equation 2.2, page 14<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    PLUTO_TRANSITPROBABILITY = 0.012 # [%]

    #
     # Maximum reduction of the solar flux for an observer external to the solar system during a transit of Pluto
     # <p>
     # Source: E.g., A. Johansen, 26 March 2002, 'Detection of planetary transits with the Gaia satellite', GAIA-CUO-106, issue 1.3, Section 2.2, Equation 2.4, page 14<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    PLUTO_FLUXREDUCTION_MAXIMUM = 0.0003 # [%]

    #
     # Maximum transit time of Pluto (transiting the Sun) for an observer external to the solar system
     # <p>
     # Source: E.g., A. Johansen, 26 March 2002, 'Detection of planetary transits with the Gaia satellite', GAIA-CUO-106, issue 1.3, Section 2.3, Equation 2.5, page 15<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    PLUTO_TRANSITTIME_MAXIMUM = 3.40 # [day]

    #
     # Pluto-system mass (IAU 2009 CBE value). The 'planetary' mass includes the contribution of its satellite, Charon
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    PLUTOSYSTEM_MASS = 1.456e+22 # [kg]

    #
     # Radial-velocity amplitude of the Sun induced by the Pluto system for 'an edge-on observer' (i.e., an observer in the orbital plane of the Pluto system)
     # <p>
     # Source: E.g., A. Johansen, 26 March 2002, 'Detection of planetary transits with the Gaia satellite', GAIA-CUO-106, issue 1.3, Section 1.4, Equation 1.18, page 9<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    PLUTOSYSTEM_RADIALVELOCITYSIGNATURE = 3.6e-5 # [m s^-1]

    #
     # Astrometric signature of the Sun induced by the Pluto system for an observer located at a distance of 10 pc from the Sun
     # <p>
     # Source: E.g., A. Johansen, 26 March 2002, 'Detection of planetary transits with the Gaia satellite', GAIA-CUO-106, issue 1.3, Section 1.7, Equation 1.22, page 11<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    PLUTOSYSTEM_ASTROMETRICSIGNATURE_10PARSEC = 0.029 # [10^-6 arcsec]

    #
     # Precession constant m = p cos(\epsilon_0), in s per Julian year, at the standard epoch J2000.0, nowadays irrelevant as a fundamental constant. The precession in right ascension \alpha equals m + n sin(\alpha) tan(\delta); the precession in declination \delta equals n cos(\alpha)
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    PRECESSION_CONSTANT_J2000M = 3.075887 # [s yr^-1]

    #
     # Precession constant n = p sin(\epsilon_0), in arcsec per Julian year, at the standard epoch J2000.0, nowadays irrelevant as a fundamental constant. The precession in right ascension \alpha equals m + n sin(\alpha) tan(\delta); the precession in declination \delta equals n cos(\alpha)
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    PRECESSION_CONSTANT_J2000N = 20.003394 # [arcsec yr^-1]

    #
     # Proper-motion conversion constant A_v = 4.74... km yr s^-1 (see ESA, 1997, 'The Hipparcos and Tycho Catalogues', ESA SP-1200, Volume 1, page 25, Table 1.2.2)
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    PROPERMOTION_CONSTANT = 4.740470463 # [km yr s^-1]

    #
     # One radian in units of degrees
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    RADIAN_DEGREE = 5.72957795130823e+1 # [deg]

    #
     # One radian in units of arcseconds
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    RADIAN_ARCSECOND = 2.06264806247096e+5 # [arcsec]

    #
     # One radian in units of milli-arcseconds
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    RADIAN_MILLIARCSECOND = 2.06264806247096e+8 # [milli-arcsec]

    #
     # One radian in units of micro-arcseconds
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    RADIAN_MICROARCSECOND = 2.06264806247096e+11 # [micro-arcsec]

    #
     # First radiation constant. Note: best-measured value equals 3.74177153E-16 (P.J. Mohr, B.N. Taylor, D.B. Newell, 22 July 2011, 'The 2010 CODATA Recommended Values of the Fundamental Physical Constants', National Institute of Standards and Technology, Gaithersburg, MD 20899-8401; http://www.codata.org/ and http://physics.nist.gov/constants, Web Version 6.2, retrieved on 18 January 2012)
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    RADIATION_CONSTANT_FIRST = 3.74177152e-16 # [W m^2]

    #
     # Second radiation constant. Note: best-measured value equals 1.4387770E-2 (P.J. Mohr, B.N. Taylor, D.B. Newell, 22 July 2011, 'The 2010 CODATA Recommended Values of the Fundamental Physical Constants', National Institute of Standards and Technology, Gaithersburg, MD 20899-8401; http://www.codata.org/ and http://physics.nist.gov/constants, Web Version 6.2, retrieved on 18 January 2012)
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    RADIATION_CONSTANT_SECOND = 1.4387770e-2 # [m K]

    #
     # Radiation constant, also known as radiation-density constant, linking the energy density u (= 4 Pi I / c) of black-body radiation and temperature T via u = a T^4
     # <p>
     # Source: E.g., H. Karttunen, et al., 1987, 'Fundamental Astronomy', Springer Verlag, Berlin, Section 11.2, page 247 or R. Kippenhahn, A. Weigert, 1991, 'Stellar structure and evolution' (corrected 2-nd printing), Springer Verlag, Berlin, Section 3.1, page 16, and Section 5.1.2, page 28<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    RADIATION_CONSTANT = 7.565731e-16 # [J m^-3 K^-4]

    #
     # Rydberg constant. Note: best-measured value equals 10973731.568539 (P.J. Mohr, B.N. Taylor, D.B. Newell, 22 July 2011, 'The 2010 CODATA Recommended Values of the Fundamental Physical Constants', National Institute of Standards and Technology, Gaithersburg, MD 20899-8401; http://www.codata.org/ and http://physics.nist.gov/constants, Web Version 6.2, retrieved on 18 January 2012)
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    RYDBERG_CONSTANT = 10973731.593929 # [m^-1]

    #
     # IAU-recommended value for the rate of change (in degrees per Julian day, calculated from the standard epoch) of the right ascension \alpha_0 of the north pole of rotation of Saturn. The pair (\alpha_0, \delta_0) denotes standard equatorial coordinates with equinox J2000 at epoch J2000 (the standard epoch is 1.5 January 2000 = JD2451545.0 TDB). The north pole is that pole of rotation that lies on the north side of the invariable plane of the solar system; the approximate coordinates of the north pole of the invariable plane are \alpha_0 = 273.85 deg and \delta_0 = 66.99 degrees
     # <p>
     # Source: B.A. Archinal, et al., 1 February 2011, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009', Celestial Mechanics and Dynamical Astronomy, 109, 101-135 (2011CeMDA.109..101A)<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    SATURN_NORTHROTATIONALPOLE_RIGHTASCENSIONRATEOFCHANGE = -0.00000099 # [deg day^-1]

    #
     # IAU-recommended value for the rate of change (in degrees per Julian day, calculated from the standard epoch) of the declination \delta_0 of the north pole of rotation of Saturn. The pair (\alpha_0, \delta_0) denotes standard equatorial coordinates with equinox J2000 at epoch J2000 (the standard epoch is 1.5 January 2000 = JD2451545.0 TDB). The north pole is that pole of rotation that lies on the north side of the invariable plane of the solar system; the approximate coordinates of the north pole of the invariable plane are \alpha_0 = 273.85 deg and \delta_0 = 66.99 degrees
     # <p>
     # Source: B.A. Archinal, et al., 1 February 2011, 'Report of the IAU Working Group on Cartographic Coordinates and Rotational Elements: 2009', Celestial Mechanics and Dynamical Astronomy, 109, 101-135 (2011CeMDA.109..101A)<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    SATURN_NORTHROTATIONALPOLE_DECLINATIONRATEOFCHANGE = -0.00000011 # [deg day^-1]

    #
     # Equatorial radius of Saturn
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    SATURN_EQUATORIALRADIUS = 6.0268e+7 # [m]

    #
     # Polar radius of Saturn
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    SATURN_POLARRADIUS = 5.4364e+7 # [m]

    #
     # Mean mass density of Saturn
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    SATURN_MASSDENSITY_MEAN = 0.6871 # [g cm^-3]

    #
     # Radius of the smallest hypothetical sphere around Saturn which would encompass the body (this is a low-accuracy parameter used in the relativistic model)
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    SATURN_ENCOMPASSINGSPHERERADIUS = 6.0268e+7 # [m]

    #
     # Post-Newtonian deflection angle of a limb-grazing light ray due to the spherically symmetric part of the gravitational field of Saturn
     # <p>
     # Source: S.A. Klioner, 2003, 'A Practical Relativistic Model for Microarcsecond Astrometry in Space', AJ, 125, 1580, Equation 64 with cot(x) = cos(x) / sin(x) approximated by x^-1; see also J.H.J. de Bruijne, 19 February 2002, 'Gravitational light deflection', GAIA-JdB-001<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    SATURN_LIGHTDEFLECTION_LIMB = 5979.0 # [10^-6 arcsec]

    #
     # Geometric transit probability (Saturn transiting the Sun) for an observer external to the solar system
     # <p>
     # Source: E.g., A. Johansen, 26 March 2002, 'Detection of planetary transits with the Gaia satellite', GAIA-CUO-106, issue 1.3, Section 2.1, Equation 2.2, page 14<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    SATURN_TRANSITPROBABILITY = 0.053 # [%]

    #
     # Maximum reduction of the solar flux for an observer external to the solar system during a transit of Saturn
     # <p>
     # Source: E.g., A. Johansen, 26 March 2002, 'Detection of planetary transits with the Gaia satellite', GAIA-CUO-106, issue 1.3, Section 2.2, Equation 2.4, page 14<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    SATURN_FLUXREDUCTION_MAXIMUM = 0.700 # [%]

    #
     # Maximum transit time of Saturn (transiting the Sun) for an observer external to the solar system
     # <p>
     # Source: E.g., A. Johansen, 26 March 2002, 'Detection of planetary transits with the Gaia satellite', GAIA-CUO-106, issue 1.3, Section 2.3, Equation 2.5, page 15<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    SATURN_TRANSITTIME_MAXIMUM = 1.81 # [day]

    #
     # Saturn-system mass (IAU 2009 CBE value). The planetary mass includes the contribution of its satellites
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    SATURNSYSTEM_MASS = 5.6850e+26 # [kg]

    #
     # Radial-velocity amplitude of the Sun induced by the Saturn system for 'an edge-on observer' (i.e., an observer in the orbital plane of the Saturn system)
     # <p>
     # Source: E.g., A. Johansen, 26 March 2002, 'Detection of planetary transits with the Gaia satellite', GAIA-CUO-106, issue 1.3, Section 1.4, Equation 1.18, page 9<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    SATURNSYSTEM_RADIALVELOCITYSIGNATURE = 2.8 # [m s^-1]

    #
     # Astrometric signature of the Sun induced by the Saturn system for an observer located at a distance of 10 pc from the Sun
     # <p>
     # Source: E.g., A. Johansen, 26 March 2002, 'Detection of planetary transits with the Gaia satellite', GAIA-CUO-106, issue 1.3, Section 1.7, Equation 1.22, page 11<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    SATURNSYSTEM_ASTROMETRICSIGNATURE_10PARSEC = 273.0 # [10^-6 arcsec]

    #
     # Shapiro's time-delay constant for the Sun
     # <p>
     # Source: See, e.g., L. Lindegren, D. Dravins, 2003, 'The fundamental definition of <radial velocity>', A&A, 401, 1185, Section 4.3 or P.K. Seidelmann, 1992, 'Explanatory Supplement to the Astronomical Almanac', University Science Books, Mill Valley, Ca., ISBN 0-935702-68-7, Equation 5.3211-1, page 295<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    SHAPIRO_CONSTANT = 9.851e-6 # [s]

    #
     # Silicon bandgap, in eV, at 160 K. The energy bandgap of Silicon (and semi-conductors in general) decreases with increasing temperature. This is explained as follows: an increased temperature enhances the amplitude of atomic vibrations due to the increased thermal energy; this causes the interatomic spacing to increase; this decreases the potential seen by the electrons in the material; this, finally, reduces the size of the energy bandgap. The temperature dependence of the energy bandgap has been experimentally determined to be E_g(T) = E_g(0) - \alpha * T^2 * (T + \beta)^-1, where T is the temperature in K,  E_g(0) is the bandgap energy in eV at zero absolute temperature (parameter Si_Bandgap_0K), and \alpha and \beta are material constants (parameters Si_Constant_Alpha and Si_Constant_Beta for Silicon)
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    SI_BANDGAP_160K = 1.151 # [eV]

    #
     # Silicon cut-off wavelength, in nm, at 160 K
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    SI_CUTOFFWAVELENGTH_160K = 1077.39 # [nm]

    #
     # Specific stiffness of SiC (Boostec); also known as specific modulus
     # <p>
     # Source: F. Safa (EADS-Astrium), 23 April 2002, 'SiC versus C-SiC trade-off', pages 8-9<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    SIC_SPECIFICSTIFNESS = 133.0 # [10^6 N m kg^-1]

    #
     # Second Lame constant of SiC (Boostec), also known as shear modulus or rigidity
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    SIC_LAMECONSTANT_SECOND = 181.0 # [GPa]

    #
     # First Lame constant of SiC (Boostec)
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    SIC_LAMECONSTANT_FIRST = 85.0 # [GPa]

    #
     # The bulk modulus of SiC (Boostec) under isotropic stress; also known as compression modulus
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    SIC_BULKMODULUS = 206.0 # [GPa]

    #
     # The compressibility of SiC (Boostec)
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    SIC_COMPRESSIBILITY = 4.86e-12 # [m^2 N^-1]

    #
     # The S-wave speed in SiC (Boostec); an S-wave is a wave in an elastic medium in which the restoring force is provided by shear
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    SIC_SWAVESPEED = 7.57 # [km s^-1]

    #
     # The P-wave speed in SiC (Boostec); a P-wave (pressure wave) is a longitudinal wave in an elastic medium in which the restoring force is provided by the medium's bulk modulus
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    SIC_PWAVESPEED = 11.90 # [km s^-1]

    #
     # Average linear thermal expansion coefficient of isotropic homogeneous SiC (Boostec) at 293 K
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    SIC_LINEARTHERMALCOEFFICIENTOFEXPANSION_293K = 0.7 # [ppm K^-1]

    #
     # Average linear thermal expansion coefficient of isotropic homogeneous SiC (Boostec) at 170 K
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    SIC_LINEARTHERMALCOEFFICIENTOFEXPANSION_170K = 1.1 # [ppm K^-1]

    #
     # Average linear thermal expansion coefficient of isotropic homogeneous SiC (Boostec) at 100 K
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    SIC_LINEARTHERMALCOEFFICIENTOFEXPANSION_100K = 1.0 # [ppm K^-1]

    #
     # SiC cryogenic linear scale factor \xi between 293 K and 120 K. The assumed linear thermal expansion coefficient of SiC at 293 K is 1.27 ppm K^-1 (see also parameter SiC_LinearThermalCoefficientOfExpansion_293K)
     # <p>
     # Source: A. Mora, 21 June 2011, 'Conversion between image and object space coordinates', GAIA-CH-TN-ESAC-AMF-008, issue 2, revision 1, Section 3<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    SIC_CRYOGENICLINEARSCALEFACTOR_293K = 1.00021971

    #
     # Thermal diffusivity of SiC (Boostec) at 293 K
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    SIC_THERMALDIFFUSIVITY_293K = 88.0 # [m^2 s^-1]

    #
     # Thermal diffusivity of SiC (Boostec) at 170 K
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    SIC_THERMALDIFFUSIVITY_170K = 218.0 # [m^2 s^-1]

    #
     # Thermal diffusivity of SiC (Boostec) at 100 K
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    SIC_THERMALDIFFUSIVITY_100K = 570.0 # [m^2 s^-1]

    #
     # Sky-averaged density of stars with G <= 20.00 mag. Note that a value of 25.1E3 stars deg^-2 is given in ESA, July 2000, 'Gaia; Composition, Formation and Evolution of the Galaxy; Concept and Technology Study Report', ESA-SCI(2000)4, Section 6.4.5 and Table 6.6, pages 240-242
     # <p>
     # Source: See also ESA, 11 March 2010, 'Gaia mission requirements document (MRD)', issue 3, revision 0, GAIA-EST-RD-00553, Section 4.1<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    SKY_STARDENSITY_AVERAGE = 25089.0 # [stars deg^-2]

    #
     # The brighter star-selection limiting magnitude of RVS compared to SM/AF/BP/RP (G_RVS (= C1M861 = RVF) = 17.00 mag versus G = 20.00 mag, respectively; see parameters Selection_Magnitude_Maximum) is assumed to correspond to a factor 6 reduction in star density and the number of stars
     # <p>
     # Source: D. Katz, M. Cropper, J.M. Desert, et al., 12 January 2006, 'CU6 - Spectroscopic processing - preliminary functional and data-flow analysis', GAIA-C6-TN-OPM-DK-001-02, Section 3.1, page 15<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    SKY_STARDENSITY_RVSREDUCTIONFACTOR = 6.0

    #
     # Predicted total number of observed stars (i.e., G <= 20.00 mag)
     # <p>
     # Source: See also ESA, 11 March 2010, 'Gaia mission requirements document (MRD)', issue 3, revision 0, GAIA-EST-RD-00553, Requirement SCI-130<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    SKY_NUMBEROFSTARS_TOTAL = 1.035e+9 # [stars]

    #
     # Stefan-Boltzmann constant. Note: best-measured value equals 5.670373E-8 (P.J. Mohr, B.N. Taylor, D.B. Newell, 22 July 2011, 'The 2010 CODATA Recommended Values of the Fundamental Physical Constants', National Institute of Standards and Technology, Gaithersburg, MD 20899-8401; http://www.codata.org/ and http://physics.nist.gov/constants, Web Version 6.2, retrieved on 18 January 2012)
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    STEFANBOLTZMANN_CONSTANT = 5.670372e-8 # [W m^-2 K^-4]

    #
     # One steradian in units of square degrees
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    STERADIAN_DEGREESQUARE = 3282.80635001174 # [deg^2]

    #
     # Heliocentric gravitational constant (TCB-compatible value)
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    SUN_GM = 1.327124420757197e+20 # [m^3 s^-2]

    #
     # Post-Newtonian deflection angle, for an observer at one AU from the Sun, of a light ray arriving at right angles to the solar direction due to the spherically symmetric part of the gravitational field of the Sun
     # <p>
     # Source: ESA, 1997, 'The Hipparcos and Tycho Catalogues', ESA SP-1200, Volume 3, page 331; cf. S.A. Klioner, 2003, 'A Practical Relativistic Model for Microarcsecond Astrometry in Space', AJ, 125, 1580, Equation 64<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    SUN_LIGHTDEFLECTION_RIGHTANGLES = 4072.0 # [10^-6 arcsec]

    #
     # Post-Newtonian deflection angle, for an observer at one AU from the Sun, of a Solar-limb-grazing light ray due to the spherically symmetric part of the gravitational field of the Sun
     # <p>
     # Source: S.A. Klioner, 2003, 'A Practical Relativistic Model for Microarcsecond Astrometry in Space', AJ, 125, 1580, Equation 64<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    SUN_LIGHTDEFLECTION_LIMB = 1750453.0 # [10^-6 arcsec]

    #
     # Solar mass
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    SUN_MASS = 1.9885e+30 # [kg]

    #
     # Solar diurnal parallax
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    SUN_DIURNALPARALLAX = 8.794143 # [arcsec]

    #
     # Solar (equatorial) radius (photosphere)
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    SUN_EQUATORIALRADIUS = 6.95991756e+8 # [m]

    #
     # Mean solar mass density
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    SUN_MASSDENSITY_MEAN = 1.408 # [g cm^-3]

    #
     # Radius of the smallest hypothetical sphere around the Sun which would encompass the body (this is a low-accuracy parameter used in the relativistic model)
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    SUN_ENCOMPASSINGSPHERERADIUS = 6.96e+8 # [m]

    #
     # Solar (mean) value of the Rosseland mean opacity for Thomson free-electron-scattering
     # <p>
     # Source: E.g., R. Kippenhahn, A. Weigert, 1991, 'Stellar structure and evolution' (corrected 2-nd printing), Springer Verlag, Berlin, Section 17, Equation 17.2, page 137<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    SUN_ROSSELANDMEANOPACITY_THOMSONSCATTERING = 0.0344 # [m^2 kg^-1]

    #
     # Coarse estimate of the solar (mean) value of the mean free photon path (assuming complete ionisation)
     # <p>
     # Source: E.g., R. Kippenhahn, A. Weigert, 1991, 'Stellar structure and evolution' (corrected 2-nd printing), Springer Verlag, Berlin, Section 5, Equation 5.1, page 27<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    SUN_FREEPHOTONPATH_MEAN = 0.021 # [m]

    #
     # Johnson-Cousins V-R colour of the Sun. The passbands are taken from M.S. Bessell, 1990, 'UBVRI passbands', PASP, 102, 1181
     # <p>
     # Source: See also J. Holmberg, C. Flynn, L. Portinari, 2006, 'The colours of the Sun', MNRAS, 367, 449 and B.J. Taylor, 1998, 'The colours of the Sun', proceedings of IAU Symposium 189 on 'Fundamental Stellar Properties: The Interaction between Observation and Theory', eds T.R. Bedding, A.J. Booth, J. Davis, Kluwer, Dordrecht, ISBN 0-7923-4651-3, page 83 (1998IAUS..189...83T)<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    SUN_VMINR = 0.368 # [mag]

    #
     # Johnson V absolute magnitude of the Sun
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    SUN_ABSOLUTEVMAGNITUDE = 4.81 # [mag]

    #
     # Johnson V bolometric correction of the Sun. Bessell et al. (1998) comment that this zero point is different to that of -0.193 mag adopted by Kurucz (1979, 1993, 1994) and followed by Schmidt-Kaler (1982)
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    SUN_BOLOMETRICCORRECTIONVMAGNITUDE = -0.06 # [mag]

    #
     # Hydrogen abundance of the Sun by mass
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    SUN_X = 0.7166

    #
     # Solar value of the mean molecular weight (assuming complete ionisation)
     # <p>
     # Source: E.g., H. Karttunen, et al., 1987, 'Fundamental Astronomy', Springer Verlag, Berlin, Section 11.2, Equation 11.8, page 245<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    SUN_MEANMOLECULARWEIGHT = 0.6092

    #
     # Solar value of the mean molecular weight per free electron (assuming complete ionisation)
     # <p>
     # Source: E.g., H. Karttunen, et al., 1987, 'Fundamental Astronomy', Springer Verlag, Berlin, Section 11.2, page 246<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    SUN_MEANMOLECULARWEIGHT_PERFREEELECTRON = 1.1651

    #
     # Surface gravity of the Sun
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    SUN_SURFACEGRAVITY = 274.0 # [m s^-2]

    #
     # Luminosity of the Sun. This value changes by \pm 0.1% during a solar cycle; during solar maximum, sunspots can induce variations over one solar rotation at the level of a few tenths of a percent
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    SUN_LUMINOSITY = 3.842e+26 # [W]

    #
     # Effective (black-body) temperature of the Sun
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    SUN_EFFECTIVETEMPERATURE = 5776.0 # [K]

    #
     # Energy flux of the Sun at L2. Due to orbital modulation, this value changes by \pm 3.4% during a year; this value changes by \pm 0.1% during a solar cycle; during solar maximum, sunspots can induce variations over one solar rotation at the level of a few tenths of a percent
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    SUN_ENERGYFLUX_L2 = 1339.0 # [W m^-2]

    #
     # Mean value of the solar-radiation pressure at a distance of one astronomical unit. Due to orbital modulation, this value changes by \pm 3.4% during a year; this value changes by \pm 0.1% during a solar cycle; during solar maximum, sunspots can induce variations over one solar rotation at the level of a few tenths of a percent
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    SUN_RADIATIONPRESSURE_ASTRONOMICALUNIT = 4.56e-6 # [Pa]

    #
     # Mean value of the solar-radiation pressure at L2. Due to orbital modulation, this value changes by \pm 3.4% during a year; this value changes by \pm 0.1% during a solar cycle; during solar maximum, sunspots can induce variations over one solar rotation at the level of a few tenths of a percent
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    SUN_RADIATIONPRESSURE_L2 = 4.47e-6 # [Pa]

    #
     # Velocity of the Sun with respect to the local standard of rest (LSR)
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    SUN_VELOCITYLSR = 18.04 # [km s^-1]

    #
     # Orbital semi-major axis of the Sun's orbit around the (hypothetical) common barycentre of the Mercury-Sun system
     # <p>
     # Source: E.g., A. Johansen, 26 March 2002, 'Detection of planetary transits with the Gaia satellite', GAIA-CUO-106, issue 1.3, Section 1.1, Equation 1.6, page 6<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    SUN_ORBITALSEMIMAJORAXIS_MERCURYSYSTEM = 10.0 # [km]

    #
     # Orbital semi-major axis of the Sun's orbit around the (hypothetical) common barycentre of the Venus-Sun system
     # <p>
     # Source: E.g., A. Johansen, 26 March 2002, 'Detection of planetary transits with the Gaia satellite', GAIA-CUO-106, issue 1.3, Section 1.1, Equation 1.6, page 6<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    SUN_ORBITALSEMIMAJORAXIS_VENUSSYSTEM = 265.0 # [km]

    #
     # Orbital semi-major axis of the Sun's orbit around the (hypothetical) common barycentre of the Earth-system-Sun system
     # <p>
     # Source: E.g., A. Johansen, 26 March 2002, 'Detection of planetary transits with the Gaia satellite', GAIA-CUO-106, issue 1.3, Section 1.1, Equation 1.6, page 6<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    SUN_ORBITALSEMIMAJORAXIS_EARTHSYSTEM = 455.0 # [km]

    #
     # Orbital semi-major axis of the Sun's orbit around the (hypothetical) common barycentre of the Mars-system-Sun system
     # <p>
     # Source: E.g., A. Johansen, 26 March 2002, 'Detection of planetary transits with the Gaia satellite', GAIA-CUO-106, issue 1.3, Section 1.1, Equation 1.6, page 6<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    SUN_ORBITALSEMIMAJORAXIS_MARSSYSTEM = 74.0 # [km]

    #
     # Orbital semi-major axis of the Sun's orbit around the (hypothetical) common barycentre of the Jupiter-system-Sun system
     # <p>
     # Source: E.g., A. Johansen, 26 March 2002, 'Detection of planetary transits with the Gaia satellite', GAIA-CUO-106, issue 1.3, Section 1.1, Equation 1.6, page 6<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    SUN_ORBITALSEMIMAJORAXIS_JUPITERSYSTEM = 743154.0 # [km]

    #
     # Orbital semi-major axis of the Sun's orbit around the (hypothetical) common barycentre of the Saturn-system-Sun system
     # <p>
     # Source: E.g., A. Johansen, 26 March 2002, 'Detection of planetary transits with the Gaia satellite', GAIA-CUO-106, issue 1.3, Section 1.1, Equation 1.6, page 6<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    SUN_ORBITALSEMIMAJORAXIS_SATURNSYSTEM = 407864.0 # [km]

    #
     # Orbital semi-major axis of the Sun's orbit around the (hypothetical) common barycentre of the Uranus-system-Sun system
     # <p>
     # Source: E.g., A. Johansen, 26 March 2002, 'Detection of planetary transits with the Gaia satellite', GAIA-CUO-106, issue 1.3, Section 1.1, Equation 1.6, page 6<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    SUN_ORBITALSEMIMAJORAXIS_URANUSSYSTEM = 125340.0 # [km]

    #
     # Orbital semi-major axis of the Sun's orbit around the (hypothetical) common barycentre of the Neptune-system-Sun system
     # <p>
     # Source: E.g., A. Johansen, 26 March 2002, 'Detection of planetary transits with the Gaia satellite', GAIA-CUO-106, issue 1.3, Section 1.1, Equation 1.6, page 6<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    SUN_ORBITALSEMIMAJORAXIS_NEPTUNESYSTEM = 231730.0 # [km]

    #
     # Orbital semi-major axis of the Sun's orbit around the (hypothetical) common barycentre of the Pluto-system-Sun system
     # <p>
     # Source: E.g., A. Johansen, 26 March 2002, 'Detection of planetary transits with the Gaia satellite', GAIA-CUO-106, issue 1.3, Section 1.1, Equation 1.6, page 6<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    SUN_ORBITALSEMIMAJORAXIS_PLUTOSYSTEM = 44.0 # [km]

    #
     # Ratio of Sun to Earth mass. The Earth mass includes the Earth's atmosphere but excludes the mass of the Moon
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    SUNTOEARTH_MASSRATIO = 332946.048621

    #
     # Ratio of Sun to Earth-system mass. The planetary mass includes the contribution of its satellite, the Moon
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    SUNTOEARTHSYSTEM_MASSRATIO = 328900.559536

    #
     # Temperature constant encountered in physics of stellar atmospheres
     # <p>
     # Source: E.g., E. Bohm-Vitense, 1997, 'Introduction to stellar astrophysics; Volume 2: stellar atmospheres', Cambridge University Press, page 74<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    TEMPERATURE_CONSTANT = 5039.8 # [K]

    #
     # Equatorial radius of Uranus
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    URANUS_EQUATORIALRADIUS = 2.5559e+7 # [m]

    #
     # Polar radius of Uranus
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    URANUS_POLARRADIUS = 2.4973e+7 # [m]

    #
     # Mean mass density of Uranus
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    URANUS_MASSDENSITY_MEAN = 1.270 # [g cm^-3]

    #
     # Radius of the smallest hypothetical sphere around Uranus which would encompass the body (this is a low-accuracy parameter used in the relativistic model)
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    URANUS_ENCOMPASSINGSPHERERADIUS = 2.5559e+7 # [m]

    #
     # Post-Newtonian deflection angle of a limb-grazing light ray due to the spherically symmetric part of the gravitational field of Uranus
     # <p>
     # Source: S.A. Klioner, 2003, 'A Practical Relativistic Model for Microarcsecond Astrometry in Space', AJ, 125, 1580, Equation 64 with cot(x) = cos(x) / sin(x) approximated by x^-1; see also J.H.J. de Bruijne, 19 February 2002, 'Gravitational light deflection', GAIA-JdB-001<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    URANUS_LIGHTDEFLECTION_LIMB = 2097.0 # [10^-6 arcsec]

    #
     # Geometric transit probability (Uranus transiting the Sun) for an observer external to the solar system
     # <p>
     # Source: E.g., A. Johansen, 26 March 2002, 'Detection of planetary transits with the Gaia satellite', GAIA-CUO-106, issue 1.3, Section 2.1, Equation 2.2, page 14<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    URANUS_TRANSITPROBABILITY = 0.025 # [%]

    #
     # Maximum reduction of the solar flux for an observer external to the solar system during a transit of Uranus
     # <p>
     # Source: E.g., A. Johansen, 26 March 2002, 'Detection of planetary transits with the Gaia satellite', GAIA-CUO-106, issue 1.3, Section 2.2, Equation 2.4, page 14<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    URANUS_FLUXREDUCTION_MAXIMUM = 0.133 # [%]

    #
     # Maximum transit time of Uranus (transiting the Sun) for an observer external to the solar system
     # <p>
     # Source: E.g., A. Johansen, 26 March 2002, 'Detection of planetary transits with the Gaia satellite', GAIA-CUO-106, issue 1.3, Section 2.3, Equation 2.5, page 15<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    URANUS_TRANSITTIME_MAXIMUM = 2.45 # [day]

    #
     # Uranus-system mass (IAU 2009 CBE value). The planetary mass includes the contribution of its satellites
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    URANUSSYSTEM_MASS = 8.6825e+25 # [kg]

    #
     # Radial-velocity amplitude of the Sun induced by the Uranus system for 'an edge-on observer' (i.e., an observer in the orbital plane of the Uranus system)
     # <p>
     # Source: E.g., A. Johansen, 26 March 2002, 'Detection of planetary transits with the Gaia satellite', GAIA-CUO-106, issue 1.3, Section 1.4, Equation 1.18, page 9<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    URANUSSYSTEM_RADIALVELOCITYSIGNATURE = 0.3 # [m s^-1]

    #
     # Astrometric signature of the Sun induced by the Uranus system for an observer located at a distance of 10 pc from the Sun
     # <p>
     # Source: E.g., A. Johansen, 26 March 2002, 'Detection of planetary transits with the Gaia satellite', GAIA-CUO-106, issue 1.3, Section 1.7, Equation 1.22, page 11<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    URANUSSYSTEM_ASTROMETRICSIGNATURE_10PARSEC = 84.0 # [10^-6 arcsec]

    #
     # Equatorial radius of Venus
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    VENUS_EQUATORIALRADIUS = 6.0518e+6 # [m]

    #
     # Polar radius of Venus
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    VENUS_POLARRADIUS = 6.0518e+6 # [m]

    #
     # Mean mass density of Venus
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    VENUS_MASSDENSITY_MEAN = 5.243 # [g cm^-3]

    #
     # Radius of the smallest hypothetical sphere around Venus which would encompass the body (this is a low-accuracy parameter used in the relativistic model)
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    VENUS_ENCOMPASSINGSPHERERADIUS = 6.05180e+6 # [m]

    #
     # Post-Newtonian deflection angle of a limb-grazing light ray due to the spherically symmetric part of the gravitational field of Venus
     # <p>
     # Source: S.A. Klioner, 2003, 'A Practical Relativistic Model for Microarcsecond Astrometry in Space', AJ, 125, 1580, Equation 64 with cot(x) = cos(x) / sin(x) approximated by x^-1; see also J.H.J. de Bruijne, 19 February 2002, 'Gravitational light deflection', GAIA-JdB-001<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    VENUS_LIGHTDEFLECTION_LIMB = 493.0 # [10^-6 arcsec]

    #
     # Geometric transit probability (Venus transiting the Sun) for an observer external to the solar system
     # <p>
     # Source: E.g., A. Johansen, 26 March 2002, 'Detection of planetary transits with the Gaia satellite', GAIA-CUO-106, issue 1.3, Section 2.1, Equation 2.2, page 14<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    VENUS_TRANSITPROBABILITY = 0.649 # [%]

    #
     # Maximum reduction of the solar flux for an observer external to the solar system during a transit of Venus
     # <p>
     # Source: E.g., A. Johansen, 26 March 2002, 'Detection of planetary transits with the Gaia satellite', GAIA-CUO-106, issue 1.3, Section 2.2, Equation 2.4, page 14<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    VENUS_FLUXREDUCTION_MAXIMUM = 0.008 # [%]

    #
     # Maximum transit time of Venus (transiting the Sun) for an observer external to the solar system
     # <p>
     # Source: E.g., A. Johansen, 26 March 2002, 'Detection of planetary transits with the Gaia satellite', GAIA-CUO-106, issue 1.3, Section 2.3, Equation 2.5, page 15<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    VENUS_TRANSITTIME_MAXIMUM = 0.46 # [day]

    #
     # Venus(-system) mass (IAU 2009 CBE value)
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    VENUSSYSTEM_MASS = 4.8676e+24 # [kg]

    #
     # Radial-velocity amplitude of the Sun induced by Venus for 'an edge-on observer' (i.e., an observer in the orbital plane of the Venus)
     # <p>
     # Source: E.g., A. Johansen, 26 March 2002, 'Detection of planetary transits with the Gaia satellite', GAIA-CUO-106, issue 1.3, Section 1.4, Equation 1.18, page 9<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    VENUSSYSTEM_RADIALVELOCITYSIGNATURE = 0.086 # [m s^-1]

    #
     # Astrometric signature of the Sun induced by Venus for an observer located at a distance of 10 pc from the Sun
     # <p>
     # Source: E.g., A. Johansen, 26 March 2002, 'Detection of planetary transits with the Gaia satellite', GAIA-CUO-106, issue 1.3, Section 1.7, Equation 1.22, page 11<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    VENUSSYSTEM_ASTROMETRICSIGNATURE_10PARSEC = 0.177 # [10^-6 arcsec]

    #
     # Zero degrees Celsius (ice point) expressed in degrees Kelvin
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    ZEROCELSIUS_KELVIN = 273.15 # [K]

     class DE405
        #
         # Astronomical unit (AU) length (TDB-compatible value; DE405 value). Do not use this parameter but use the TCB-compatible value from parameter :Nature:DE405:AstronomicalUnit_Meter instead
         # <p>
         # Source: E.M. Standish, 26 August 1998, 'JPL Planetary and Lunar Ephemerides, DE405/LE405', JPL IOM 312.F-98-048<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        ASTRONOMICALUNIT_TDBMETER = 1.495978730105339e+11 # [m (TDB)]

        #
         # Astronomical unit (AU) light time (TCB-compatible value; DE405 value; see S.A. Klioner, 2008, 'Relativistic scaling of astronomical quantities and the system of astronomical units', A&A, 478, 951-958)
         # <p>
         # Source: E.M. Standish, 26 August 1998, 'JPL Planetary and Lunar Ephemerides, DE405/LE405', JPL IOM 312.F-98-048<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        ASTRONOMICALUNIT_SECOND = 4.990047915432680e+2 # [s]

        #
         # Astronomical unit (AU) length (TCB-compatible value; DE405 value; see S.A. Klioner, 2008, 'Relativistic scaling of astronomical quantities and the system of astronomical units', A&A, 478, 951-958)
         # <p>
         # Source: E.M. Standish, 26 August 1998, 'JPL Planetary and Lunar Ephemerides, DE405/LE405', JPL IOM 312.F-98-048<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        ASTRONOMICALUNIT_METER = 1.495978730105339e+11 # [m]

        #
         # Geocentric gravitational constant (TCB-compatible value; DE405 value)
         # <p>
         # Source: E.M. Standish, 26 August 1998, 'JPL Planetary and Lunar Ephemerides, DE405/LE405', JPL IOM 312.F-98-048<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        EARTH_GM = 3.98600457618e+14 # [m^3 s^-2]

        #
         # Geocentric gravitational constant (TDB-compatible value; DE405 value). Do not use this parameter but use the TCB-compatible value from parameter :Nature:DE405:Earth_GM instead
         # <p>
         # Source: E.M. Standish, 26 August 1998, 'JPL Planetary and Lunar Ephemerides, DE405/LE405', JPL IOM 312.F-98-048<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        EARTH_GM_TDB = 3.98600451438e+14 # [m^3 s^-2 (TDB)]

        #
         # Ratio of Moon to Earth mass (DE405 value)
         # <p>
         # Source: E.M. Standish, 26 August 1998, 'JPL Planetary and Lunar Ephemerides, DE405/LE405', JPL IOM 312.F-98-048<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        MOONTOEARTH_MASSRATIO = 0.0123000383

        #
         # Heliocentric gravitational constant (TCB-compatible value; DE405 value)
         # <p>
         # Source: E.M. Standish, 26 August 1998, 'JPL Planetary and Lunar Ephemerides, DE405/LE405', JPL IOM 312.F-98-048<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        SUN_GM = 1.32712448249e+20 # [m^3 s^-2]

        #
         # Heliocentric gravitational constant (TDB-compatible value; DE405 value). Do not use this parameter but use the TCB-compatible value from parameter :Nature:DE405:Sun_GM instead
         # <p>
         # Source: E.M. Standish, 26 August 1998, 'JPL Planetary and Lunar Ephemerides, DE405/LE405', JPL IOM 312.F-98-048<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        SUN_GM_TDB = 1.32712446191e+20 # [m^3 s^-2 (TDB)]

        #
         # Ratio of Sun to Earth mass (DE405 value)
         # <p>
         # Source: E.M. Standish, 26 August 1998, 'JPL Planetary and Lunar Ephemerides, DE405/LE405', JPL IOM 312.F-98-048<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        SUNTOEARTH_MASSRATIO = 332946.050895

        end



     class INPOP06
        #
         # Astronomical unit (AU) light time (TCB-compatible value; INPOP06 value)
         # <p>
         # Source: A. Fienga, J. Laskar, H. Manche, M. Gastineau, 19 April 2007, 'Solar System Planetary Ephemeris Delivery: INPOP06', GAIA-CA-TN-IMC-AF-001-01<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        ASTRONOMICALUNIT_SECOND = 4.990047838061357e+2 # [s]

        #
         # Geocentric gravitational constant (TCB-compatible value; INPOP06 value)
         # <p>
         # Source: A. Fienga, J. Laskar, H. Manche, M. Gastineau, 19 April 2007, 'Solar System Planetary Ephemeris Delivery: INPOP06', GAIA-CA-TN-IMC-AF-001-01<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        EARTH_GM = 3.986004390773178e+14 # [m^3 s^-2]

        #
         # Nominal mean angular velocity of the Earth (INPOP06 value)
         # <p>
         # Source: A. Fienga, J. Laskar, H. Manche, M. Gastineau, 19 April 2007, 'Solar System Planetary Ephemeris Delivery: INPOP06', GAIA-CA-TN-IMC-AF-001-01<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        EARTH_SPINRATE_NOMINAL = 7.2921150e-5 # [rad s^-1]

        #
         # GM of the Earth-system (TCB-compatible value). The gravitational constant includes the contribution of its satellite, the Moon
         # <p>
         # Source: A. Fienga, J. Laskar, H. Manche, M. Gastineau, 19 April 2007, 'Solar System Planetary Ephemeris Delivery: INPOP06', GAIA-CA-TN-IMC-AF-001-01<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        EARTHSYSTEM_GM = 4.035032397354844e+14 # [m^3 s^-2]

        #
         # GM of Jupiter (TCB-compatible value; this is a low-accuracy parameter used in the relativistic model, ignoring the contribution of planetary satellites)
         # <p>
         # Source: A. Fienga, J. Laskar, H. Manche, M. Gastineau, 19 April 2007, 'Solar System Planetary Ephemeris Delivery: INPOP06', GAIA-CA-TN-IMC-AF-001-01<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        JUPITER_GM = 1.267127667978937e+17 # [m^3 s^-2]

        #
         # GM of the Jupiter-system (TCB-compatible value). The gravitational constant includes the contribution of its satellites
         # <p>
         # Source: A. Fienga, J. Laskar, H. Manche, M. Gastineau, 19 April 2007, 'Solar System Planetary Ephemeris Delivery: INPOP06', GAIA-CA-TN-IMC-AF-001-01<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        JUPITERSYSTEM_GM = 1.267127667978937e+17 # [m^3 s^-2]

        #
         # GM of Mars (TCB-compatible value; this is a low-accuracy parameter used in the relativistic model, ignoring the contribution of planetary satellites)
         # <p>
         # Source: A. Fienga, J. Laskar, H. Manche, M. Gastineau, 19 April 2007, 'Solar System Planetary Ephemeris Delivery: INPOP06', GAIA-CA-TN-IMC-AF-001-01<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        MARS_GM = 4.282831492212859e+13 # [m^3 s^-2]

        #
         # GM of the Mars-system (TCB-compatible value). The gravitational constant includes the contribution of its satellites
         # <p>
         # Source: A. Fienga, J. Laskar, H. Manche, M. Gastineau, 19 April 2007, 'Solar System Planetary Ephemeris Delivery: INPOP06', GAIA-CA-TN-IMC-AF-001-01<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        MARSSYSTEM_GM = 4.282831492212859e+13 # [m^3 s^-2]

        #
         # GM of Mercury (TCB-compatible value)
         # <p>
         # Source: A. Fienga, J. Laskar, H. Manche, M. Gastineau, 19 April 2007, 'Solar System Planetary Ephemeris Delivery: INPOP06', GAIA-CA-TN-IMC-AF-001-01<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        MERCURY_GM = 2.203208082802969e+13 # [m^3 s^-2]

        #
         # GM of the Mercury(-system) (TCB-compatible value)
         # <p>
         # Source: A. Fienga, J. Laskar, H. Manche, M. Gastineau, 19 April 2007, 'Solar System Planetary Ephemeris Delivery: INPOP06', GAIA-CA-TN-IMC-AF-001-01<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        MERCURYSYSTEM_GM = 2.203208082802969e+13 # [m^3 s^-2]

        #
         # Selenocentric gravitational constant (TCB-compatible value; INPOP06 value)
         # <p>
         # Source: A. Fienga, J. Laskar, H. Manche, M. Gastineau, 19 April 2007, 'Solar System Planetary Ephemeris Delivery: INPOP06', GAIA-CA-TN-IMC-AF-001-01<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        MOON_GM = 4.902800658166656e+12 # [m^3 s^-2]

        #
         # Ratio of Moon to Earth mass (INPOP06 value)
         # <p>
         # Source: A. Fienga, J. Laskar, H. Manche, M. Gastineau, 19 April 2007, 'Solar System Planetary Ephemeris Delivery: INPOP06', GAIA-CA-TN-IMC-AF-001-01<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        MOONTOEARTH_MASSRATIO = 0.0123000383

        #
         # GM of Neptune (TCB-compatible value; this is a low-accuracy parameter used in the relativistic model, ignoring the contribution of planetary satellites)
         # <p>
         # Source: A. Fienga, J. Laskar, H. Manche, M. Gastineau, 19 April 2007, 'Solar System Planetary Ephemeris Delivery: INPOP06', GAIA-CA-TN-IMC-AF-001-01<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        NEPTUNE_GM = 6.836534169881074e+15 # [m^3 s^-2]

        #
         # GM of the Neptune-system (TCB-compatible value). The gravitational constant includes the contribution of its satellites
         # <p>
         # Source: A. Fienga, J. Laskar, H. Manche, M. Gastineau, 19 April 2007, 'Solar System Planetary Ephemeris Delivery: INPOP06', GAIA-CA-TN-IMC-AF-001-01<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        NEPTUNESYSTEM_GM = 6.836534169881074e+15 # [m^3 s^-2]

        #
         # GM of Pluto (TCB-compatible value; this is a low-accuracy parameter used in the relativistic model, ignoring the contribution of Charon)
         # <p>
         # Source: A. Fienga, J. Laskar, H. Manche, M. Gastineau, 19 April 2007, 'Solar System Planetary Ephemeris Delivery: INPOP06', GAIA-CA-TN-IMC-AF-001-01<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        PLUTO_GM = 9.816009029269200e+11 # [m^3 s^-2]

        #
         # GM of the Pluto-system (TCB-compatible value). The gravitational constant includes the contribution of its satellite, Charon
         # <p>
         # Source: A. Fienga, J. Laskar, H. Manche, M. Gastineau, 19 April 2007, 'Solar System Planetary Ephemeris Delivery: INPOP06', GAIA-CA-TN-IMC-AF-001-01<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        PLUTOSYSTEM_GM = 9.816009029269200e+11 # [m^3 s^-2]

        #
         # GM of Saturn (TCB-compatible value; this is a low-accuracy parameter used in the relativistic model, ignoring the contribution of planetary satellites)
         # <p>
         # Source: A. Fienga, J. Laskar, H. Manche, M. Gastineau, 19 April 2007, 'Solar System Planetary Ephemeris Delivery: INPOP06', GAIA-CA-TN-IMC-AF-001-01<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        SATURN_GM = 3.794062664941419e+16 # [m^3 s^-2]

        #
         # GM of the Saturn-system (TCB-compatible value). The gravitational constant includes the contribution of its satellites
         # <p>
         # Source: A. Fienga, J. Laskar, H. Manche, M. Gastineau, 19 April 2007, 'Solar System Planetary Ephemeris Delivery: INPOP06', GAIA-CA-TN-IMC-AF-001-01<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        SATURNSYSTEM_GM = 3.794062664941419e+16 # [m^3 s^-2]

        #
         # Heliocentric gravitational constant (TCB-compatible value; INPOP06 value)
         # <p>
         # Source: A. Fienga, J. Laskar, H. Manche, M. Gastineau, 19 April 2007, 'Solar System Planetary Ephemeris Delivery: INPOP06', GAIA-CA-TN-IMC-AF-001-01<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        SUN_GM = 1.327124420757197e+20 # [m^3 s^-2]

        #
         # Ratio of Sun to Earth mass (INPOP06 value)
         # <p>
         # Source: A. Fienga, J. Laskar, H. Manche, M. Gastineau, 19 April 2007, 'Solar System Planetary Ephemeris Delivery: INPOP06', GAIA-CA-TN-IMC-AF-001-01<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        SUNTOEARTH_MASSRATIO = 332946.050895

        #
         # Ratio of Sun to Earth-system mass (INPOP06 value). The planetary mass includes the contribution of its satellite, the Moon
         # <p>
         # Source: A. Fienga, J. Laskar, H. Manche, M. Gastineau, 19 April 2007, 'Solar System Planetary Ephemeris Delivery: INPOP06', GAIA-CA-TN-IMC-AF-001-01<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        SUNTOEARTHSYSTEM_MASSRATIO = 328900.561400

        #
         # Ratio of Sun to Jupiter-system mass (INPOP06 value). The planetary mass includes the contribution of its satellites
         # <p>
         # Source: A. Fienga, J. Laskar, H. Manche, M. Gastineau, 19 April 2007, 'Solar System Planetary Ephemeris Delivery: INPOP06', GAIA-CA-TN-IMC-AF-001-01<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        SUNTOJUPITERSYSTEM_MASSRATIO = 1047.348625

        #
         # Ratio of Sun to Mars-system mass (INPOP06 value). The planetary mass includes the contribution of its satellites
         # <p>
         # Source: A. Fienga, J. Laskar, H. Manche, M. Gastineau, 19 April 2007, 'Solar System Planetary Ephemeris Delivery: INPOP06', GAIA-CA-TN-IMC-AF-001-01<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        SUNTOMARSSYSTEM_MASSRATIO = 3098708.0

        #
         # Ratio of Sun to Mercury(-system) mass (INPOP06 value)
         # <p>
         # Source: A. Fienga, J. Laskar, H. Manche, M. Gastineau, 19 April 2007, 'Solar System Planetary Ephemeris Delivery: INPOP06', GAIA-CA-TN-IMC-AF-001-01<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        SUNTOMERCURYSYSTEM_MASSRATIO = 6023600.0

        #
         # Ratio of Sun to Neptune-system mass (INPOP06 value). The planetary mass includes the contribution of its satellites
         # <p>
         # Source: A. Fienga, J. Laskar, H. Manche, M. Gastineau, 19 April 2007, 'Solar System Planetary Ephemeris Delivery: INPOP06', GAIA-CA-TN-IMC-AF-001-01<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        SUNTONEPTUNESYSTEM_MASSRATIO = 19412.24

        #
         # Ratio of Sun to Pluto-system mass (INPOP06 value). The 'planetary' mass includes the contribution of its satellite, Charon
         # <p>
         # Source: A. Fienga, J. Laskar, H. Manche, M. Gastineau, 19 April 2007, 'Solar System Planetary Ephemeris Delivery: INPOP06', GAIA-CA-TN-IMC-AF-001-01<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        SUNTOPLUTOSYSTEM_MASSRATIO = 135200000.0

        #
         # Ratio of Sun to Saturn-system mass (INPOP06 value). The planetary mass includes the contribution of its satellites
         # <p>
         # Source: A. Fienga, J. Laskar, H. Manche, M. Gastineau, 19 April 2007, 'Solar System Planetary Ephemeris Delivery: INPOP06', GAIA-CA-TN-IMC-AF-001-01<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        SUNTOSATURNSYSTEM_MASSRATIO = 3497.898

        #
         # Ratio of Sun to Uranus-system mass (INPOP06 value). The planetary mass includes the contribution of its satellites
         # <p>
         # Source: A. Fienga, J. Laskar, H. Manche, M. Gastineau, 19 April 2007, 'Solar System Planetary Ephemeris Delivery: INPOP06', GAIA-CA-TN-IMC-AF-001-01<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        SUNTOURANUSSYSTEM_MASSRATIO = 22902.98

        #
         # Ratio of Sun to Venus(-system) mass (INPOP06 value)
         # <p>
         # Source: A. Fienga, J. Laskar, H. Manche, M. Gastineau, 19 April 2007, 'Solar System Planetary Ephemeris Delivery: INPOP06', GAIA-CA-TN-IMC-AF-001-01<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        SUNTOVENUSSYSTEM_MASSRATIO = 408523.71

        #
         # GM of Uranus (TCB-compatible value; this is a low-accuracy parameter used in the relativistic model, ignoring the contribution of planetary satellites)
         # <p>
         # Source: A. Fienga, J. Laskar, H. Manche, M. Gastineau, 19 April 2007, 'Solar System Planetary Ephemeris Delivery: INPOP06', GAIA-CA-TN-IMC-AF-001-01<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        URANUS_GM = 5.794549096917502e+15 # [m^3 s^-2]

        #
         # GM of the Uranus-system (TCB-compatible value). The gravitational constant includes the contribution of its satellites
         # <p>
         # Source: A. Fienga, J. Laskar, H. Manche, M. Gastineau, 19 April 2007, 'Solar System Planetary Ephemeris Delivery: INPOP06', GAIA-CA-TN-IMC-AF-001-01<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        URANUSSYSTEM_GM = 5.794549096917502e+15 # [m^3 s^-2]

        #
         # GM of Venus (TCB-compatible value)
         # <p>
         # Source: A. Fienga, J. Laskar, H. Manche, M. Gastineau, 19 April 2007, 'Solar System Planetary Ephemeris Delivery: INPOP06', GAIA-CA-TN-IMC-AF-001-01<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        VENUS_GM = 3.248586038634565e+14 # [m^3 s^-2]

        #
         # GM of the Venus(-system) (TCB-compatible value)
         # <p>
         # Source: A. Fienga, J. Laskar, H. Manche, M. Gastineau, 19 April 2007, 'Solar System Planetary Ephemeris Delivery: INPOP06', GAIA-CA-TN-IMC-AF-001-01<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        VENUSSYSTEM_GM = 3.248586038634565e+14 # [m^3 s^-2]

        end



     class DE410
        #
         # Ratio of the Krasinsky asteroid ring to solar mass (originally expressed in terms of M_Ceres; DE410 value). Following G.A. Krasinsky, E.V. Pitjeva, M.V. Vasilyev, E.I. Yagudina, 1 February 2002, 'Hidden Mass in the Asteroid Belt', Icarus, 158, 98-105, the gravitational effect of all but the 300 heaviest asteroids can be modeled as an acceleration caused by a solid ring of this mass in the ecliptic plane (see also E.M. Standish, 26 August 1998, 'JPL Planetary and Lunar Ephemerides, DE405/LE405', JPL IOM 312.F-98-048, Section IV)
         # <p>
         # Source: E.M. Standish, 24 April 2003, 'JPL Planetary Ephemeris DE410', JPL IOM 312.N-03-009, Table III<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        ASTEROIDRINGMASS_SOLARMASS = 1.03e-10

        end



end



 class GroundSegment
    #
     # Total duration of the two daily periods during which ranging measurements will be performed, i.e., directly after signal acquisition (start of the daily spacecraft pass over the ground station) plus directly prior to signal loss (end of the daily spacecraft pass over the ground station). Note: ranging cannot be performed during high data-rate telemetry reception (using GMSK modulation). The nominal acquisition/closing sequence at the ground station will be: (1) signal acquisition at medium rate; (2) ranging for 5 minutes; (3) switch to high rate (the encoding / modulation swap takes 2 minutes); (4) nominal science and housekeeping data downlink at high rate (effective daily telecommunications period; DTCP); (5) return to medium rate (the encoding / modulation swap takes 2 minutes); (6) ranging for 5 minutes; (7) loss of signal
     # <p>
     # Source: ESA, 17 March 2010, 'Gaia space/ground interface control document, Volume 1: RF interface', GAIA-ESC-ICD-00515, issue 2, revision 5, Section 2.2.3 and EADS-Astrium, 17 May 2010, 'Science Telemetry Downlink Management', GAIA.ASF.TCN.SAT.00015, issue 1, revision 4, Section 8.3. See also M. Flentge (ESOC), 1 January 2009, 'Stations and Facilities Interface Requirements Document (SFIRD)', GAIA-ESC-RS-0004, issue 1, revision 0, Section 4.2.1.1 'Functionality related to TT&C', Requirement SFIRD-3944, page 44: 'Orbit determination measurements (routine): ranging shall be performed for 5 minutes at the beginning and end of the pass' <br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    DAILYRANGINGPERIOD_TOTAL = 1200.0 # [s]

    #
     # Nominal duration of the daily telecommunications period (DTCP, i.e., with potential ground-station - spacecraft contact), in units of s (value corresponds to 8.0 h). The word 'nominal' refers to seasonal variations over a year
     # <p>
     # Source: ESA, 11 March 2010, 'Gaia mission requirements document (MRD)', issue 3, revision 0, GAIA-EST-RD-00553, Requirement MIS-080<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    DAILYTELECOMMUNICATIONSPERIOD_NOMINAL = 28800.0 # [s]

    #
     # Minimum duration of the daily telecommunications period (DTCP, i.e., with potential ground-station - spacecraft contact), in units of s (value corresponds to 8.1 h). The word 'minimum' refers to seasonal variations over a year. This value assumes DeepSpaceAntennaOne/Two_Elevation_Minimum = 5 degrees and ignores the orbital motion of Gaia in its Lissajous orbit around L2
     # <p>
     # Source: TBC. Current value: U. Lammers (ESA), priv. comm., 20 February 2004<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    DAILYTELECOMMUNICATIONSPERIOD_MINIMUM = 29160.0 # [s]

    #
     # Average duration of the daily telecommunications period (DTCP, i.e., with potential ground-station - spacecraft contact), in units of s (value corresponds to 11.0 h). The word 'average' refers to seasonal variations over a year. This value assumes DeepSpaceAntennaOne/Two_Elevation_Minimum = 5 degrees and ignores the orbital motion of Gaia in its Lissajous orbit around L2
     # <p>
     # Source: TBC. Current value: U. Lammers (ESA), priv. comm., 20 February 2004<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    DAILYTELECOMMUNICATIONSPERIOD_AVERAGE = 39600.0 # [s]

    #
     # Maximum duration of the daily telecommunications period (DTCP, i.e., with potential ground-station - spacecraft contact), in units of s (value corresponds to 13.9 h). The word 'maximum' refers to seasonal variations over a year. This value assumes DeepSpaceAntennaOne/Two_Elevation_Minimum = 5 degrees and ignores the orbital motion of Gaia in its Lissajous orbit around L2
     # <p>
     # Source: TBC. Current value: U. Lammers (ESA), priv. comm., 20 February 2004<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    DAILYTELECOMMUNICATIONSPERIOD_MAXIMUM = 50040.0 # [s]

    #
     # Nominal effective duration of the daily telecommunications period (DTCP, i.e., with ground-station - spacecraft contact established in practice such that science data can be transmitted), in units of s. The word 'nominal' refers to seasonal variations over a year. The following ground-segment dead times have been taken into account: daily ground-station initialisation, occasional ground-station unavailability caused by other users (emergencies), antenna outages, network outages, Mission-Operations-Centre (MOC) outages, and daily ranging
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    DAILYTELECOMMUNICATIONSPERIOD_NOMINALEFFECTIVE = 26136.0 # [s]

    #
     # Minimum effective duration of the daily telecommunications period (DTCP, i.e., with ground-station - spacecraft contact established in practice such that science data can be transmitted), in units of s. The word 'minimum' refers to seasonal variations over a year. The following ground-segment dead times have been taken into account: daily ground-station initialisation, occasional ground-station unavailability caused by other users (emergencies), antenna outages, network outages, Mission-Operations-Centre (MOC) outages, and daily ranging
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    DAILYTELECOMMUNICATIONSPERIOD_MINIMUMEFFECTIVE = 26485.2 # [s]

    #
     # Average effective duration of the daily telecommunications period (DTCP, i.e., with ground-station - spacecraft contact established in practice such that science data can be transmitted), in units of s. The word 'average' refers to seasonal variations over a year. The following ground-segment dead times have been taken into account: daily ground-station initialisation, occasional ground-station unavailability caused by other users (emergencies), antenna outages, network outages, Mission-Operations-Centre (MOC) outages, and daily ranging
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    DAILYTELECOMMUNICATIONSPERIOD_AVERAGEEFFECTIVE = 36612.0 # [s]

    #
     # Maximum effective duration of the daily telecommunications period (DTCP, i.e., with ground-station - spacecraft contact established in practice such that science data can be transmitted), in units of s. The word 'maximum' refers to seasonal variations over a year. The following ground-segment dead times have been taken into account: daily ground-station initialisation, occasional ground-station unavailability caused by other users (emergencies), antenna outages, network outages, Mission-Operations-Centre (MOC) outages, and daily ranging
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    DAILYTELECOMMUNICATIONSPERIOD_MAXIMUMEFFECTIVE = 46738.8 # [s]

    #
     # Dead time due to daily ground-segment initialisation / station setup (including spacecraft acquisition), in units of s, assumed to be 60 minutes. This dead time does not include the 5-minute station hand-over time (CEB-NNO or NNO-CEB) in case two stations are used per day (see parameter :GroundSegment:DeadTime_Miscellaneous). Note that this initialisation dead time is outside the DTCP, which it hence does not affect
     # <p>
     # Source: A. O'Connell (ESA), 27 August 2008, 'Gaia Data Downlink Study: Analysis and Results', GAIA-ESC-TN-0023, issue 1, revision 0<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    DEADTIME_INITIALISATION = 3600.00 # [s]

    #
     # Dead time due to miscellaneous activities such as station hand-over, in case two stations are used per day, and VC2 dump activities, in units of s, assumed to be 10 minutes to generate a 30-minute dead time after inclusion of two ranging measurements per day
     # <p>
     # Source: A. Rudolph (ESA), 18 September 2007, 'ESOC Input to Gaia Science Dead-Time Budget (Gaia PDR Action SYS-54.1)', GAIA-ESC-MEM-0001 and A. O'Connell (ESA), 27 August 2008, 'Gaia Data Downlink Study: Analysis and Results', GAIA-ESC-TN-0023, issue 1, revision 0<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    DEADTIME_MISCELLANEOUS = 600.00 # [s]

    #
     # Dead time due to daily ranging, in units of s
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    DEADTIME_RANGING = 1200.00 # [s]

    #
     # Total dead time associated with the ground segment, in units of s, for the nominal duration of the daily telecommunications period (DTCP). The word 'nominal' refers to seasonal variations over a year. Since the initialisation dead time (parameter :GroundSegment:DeadTime_Initialisation) is outside the DTCP, this dead time is not added here
     # <p>
     # Source: ESA, 17 March 2010, 'Gaia space/ground interface control document, Volume 1: RF interface', GAIA-ESC-ICD-00515, issue 2, revision 5, Appendix G<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    DEADTIME_NOMINAL = 2664.00 # [s]

    #
     # Total dead time associated with the ground segment, in units of s, for the minimum duration of the daily telecommunications period (DTCP). The word 'minimum' refers to seasonal variations over a year. Since the initialisation dead time (parameter :GroundSegment:DeadTime_Initialisation) is outside the DTCP, this dead time is not added here
     # <p>
     # Source: ESA, 17 March 2010, 'Gaia space/ground interface control document, Volume 1: RF interface', GAIA-ESC-ICD-00515, issue 2, revision 5, Appendix G<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    DEADTIME_MINIMUM = 2674.80 # [s]

    #
     # Total dead time associated with the ground segment, in units of s, for the average duration of the daily telecommunications period (DTCP). The word 'average' refers to seasonal variations over a year. Since the initialisation dead time (parameter :GroundSegment:DeadTime_Initialisation) is outside the DTCP, this dead time is not added here
     # <p>
     # Source: ESA, 17 March 2010, 'Gaia space/ground interface control document, Volume 1: RF interface', GAIA-ESC-ICD-00515, issue 2, revision 5, Appendix G<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    DEADTIME_AVERAGE = 2988.00 # [s]

    #
     # Total dead time associated with the ground segment, in units of s, for the maximum duration of the daily telecommunications period (DTCP). The word 'maximum' refers to seasonal variations over a year. Since the initialisation dead time (parameter :GroundSegment:DeadTime_Initialisation) is outside the DTCP, this dead time is not added here
     # <p>
     # Source: ESA, 17 March 2010, 'Gaia space/ground interface control document, Volume 1: RF interface', GAIA-ESC-ICD-00515, issue 2, revision 5, Appendix G<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    DEADTIME_MAXIMUM = 3301.20 # [s]

    #
     # The encoding scheme for the downlink transmission is Reed-Solomon (255, 223) concatenated encoding with interleaving depth I = 5 and selectable punctured convolutional rates R as defined by this parameter with constraint length k = 7. For example, an R = 1/2 convolutional encoding means that the transmitted symbol rate is 2 times the information data rate at convolutional-encoder input (Reed-Solomon-encoder output). In order to increase the effective science data rate (at the expense of an increased frame-loss probability by a factor 10-100), more efficient punctured convolutional-encoding schemes than R = 1/2 (e.g., R = 3/4 or 7/8 or even convolutional encoding switched off, corresponding to R = 1/1) are allowed
     # <p>
     # Source: ESA, 17 March 2010, 'Gaia space/ground interface control document, Volume 1: RF interface', GAIA-ESC-ICD-00515, issue 2, revision 5, Section 2.1.6 and EADS-Astrium, 17 May 2010, 'Science Telemetry Downlink Management', GAIA.ASF.TCN.SAT.00015, issue 1, revision 4, Section 6.3.1.3<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    DOWNLINK_ENCODING = [ 0.500000, 0.666667, 0.750000, 0.833333, 0.875000, 1.000000 ]

    #
     # The symbol rate at convolutional-encoder input (after Reed-Solomon encoding) for various convolutional encoding rates R. For example, with R = 1/2 convolutional encoding, a transmitted symbol rate of 10.000000 Mbps corresponds to a data rate at convolutional-encoder input of 5.000000 Mbps
     # <p>
     # Source: ESA, 17 March 2010, 'Gaia space/ground interface control document, Volume 1: RF interface', GAIA-ESC-ICD-00515, issue 2, revision 5, Section 2.1.5<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    DOWNLINK_DATARATEATCONVOLUTIONALENCODERINPUT = [ 5.000000, 6.666667, 7.500000, 8.333333, 8.750000, 10.000000 ] # [Mbps]

    #
     # Downlink information data rate (total bit rate, including all packetisation and error-correction overheads, for various convolutional encoding rates R) provided by the PAA during ground-station contact. For example, with R = 1/2 convolutional encoding, a transmitted symbol rate of 10.000000 Mbps corresponds to a data rate at convolutional-encoder input of 5.000000 Mbps (see parameter :GroundSegment:Downlink_DataRateAtConvolutionalEncoderInput), and an information data rate (still including CCSDS overheads) of 4.358874 Mbps
     # <p>
     # Source: ESA, 17 March 2010, 'Gaia space/ground interface control document, Volume 1: RF interface', GAIA-ESC-ICD-00515, issue 2, revision 5, Section 2.1.5<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    DOWNLINK_INFORMATIONBITRATE = [ 4.358874, 5.811832, 6.538311, 7.264790, 7.628030, 8.717748 ] # [Mbps]

    #
     # Downlink information data rate (total bit rate, including all packetisation and error-correction overheads, for various convolutional encoding rates R) provided by the PAA, assuming permanent ground-station contact, based on the average effective daily telecommunications period (DTCP). The word 'average' refers to seasonal variations over a year
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    DOWNLINK_INFORMATIONBITRATE_SUSTAINED = [ 1.847073, 2.462764, 2.770609, 3.078455, 3.232378, 3.694146 ] # [Mbps]

    #
     # CCSDS source-packet data rate (for various convolutional encoding rates R). For example, with R = 1/2 convolutional encoding, a transmitted symbol rate of 10.000000 Mbps corresponds to a data rate at convolutional-encoder input (Reed-Solomon-encoder output) of 5.000000 Mbps (see parameter :GroundSegment:Downlink_DataRateAtConvolutionalEncoderInput), an information data rate (still including CCSDS overheads) of 4.358874 Mbps (see parameter :GroundSegment:Downlink_InformationBitRate), and a CCSDS source-packet data rate of 4.296325 Mbps
     # <p>
     # Source: EADS-Astrium, 11 October 2011, 'Link Budget', GAIA.ASU.BG.SAT.00002, issue 11, revision 0, Section 4.4<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    DOWNLINK_SOURCEPACKETDATARATE = [ 4.296325, 5.728434, 6.444488, 7.160542, 7.518569, 8.592651 ] # [Mbps]

    #
     # CCSDS source-packet data rate (for various convolutional encoding rates R), assuming permanent ground-station contact, based on the average effective daily telecommunications period (DTCP). The word 'average' refers to seasonal variations over a year
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    DOWNLINK_SOURCEPACKETDATARATE_SUSTAINED = [ 1.820568, 2.427424, 2.730852, 3.034280, 3.185994, 3.641136 ] # [Mbps]

    #
     # Star-packet data rate (for various convolutional encoding rates R). For example, with R = 1/2 convolutional encoding, a transmitted symbol rate of 10.000000 Mbps corresponds to a data rate at convolutional-encoder input (Reed-Solomon-encoder output) of 5.000000 Mbps (see parameter :GroundSegment:Downlink_DataRateAtConvolutionalEncoderInput), an information data rate (still including CCSDS overheads) of 4.358874 Mbps (see parameter :GroundSegment:Downlink_InformationBitRate), a CCSDS source-packet data rate of 4.296325 Mbps (see parameter :GroundSegment:Downlink_SourcePacketDataRate), and a star-packet data rate of 4.295145 Mbps
     # <p>
     # Source: EADS-Astrium, 11 October 2011, 'Link Budget', GAIA.ASU.BG.SAT.00002, issue 11, revision 0, Section 4.4<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    DOWNLINK_STARPACKETDATARATE = [ 4.295145, 5.726860, 6.442718, 7.158576, 7.516504, 8.590291 ] # [Mbps]

    #
     # Star-packet data rate (for various convolutional encoding rates R), assuming permanent ground-station contact, based on the average effective daily telecommunications period (DTCP). The word 'average' refers to seasonal variations over a year
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    DOWNLINK_STARPACKETDATARATE_SUSTAINED = [ 1.820068, 2.426757, 2.730102, 3.033446, 3.185119, 3.640136 ] # [Mbps]

    #
     # Ground-segment (master-)clock accuracy requirement (over 1 day), also refered to as the ground-segment-related OBT-UTC time-correlation accuracy requirement. The top-level requirement, following M.A.C. Perryman, 7 December 2005, 'Specifications for Absolute Time and Orbital Ephemeris for ESOC', GAIA-CA-TN-ESA-MP-012-02, issue 2, is that the OBT-UTC time-correlation accuracy should be better than 2.00E-6 s, in which identified error contributions are added linearly, amongst which the satellite component does not exceed 1.00E-6 s RMS and the satellite-position-component error in the (line-of-sight) X-direction does not exceed 0.24E-6 s RMS. The MIRD refers to a maximum ground-segment contribution of 1.10E-6 s RMS and a propagation-delay contribution of 0.25E-6 s RMS (added linearly)
     # <p>
     # Source: J. Lluch & G. Whitehead, 9 January 2009, 'OBT-UTC Time Synchronisation', GAIA-ESC-TN-0002, issue 2, revision 3 and M.A.C. Perryman, 7 December 2005, 'Specifications for Absolute Time and Orbital Ephemeris for ESOC', GAIA-CA-TN-ESA-MP-012-02, issue 2<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    MASTERCLOCK_ACCURACY_REQUIREMENT = 1.350 # [10^-6 s]

    #
     # Ground-segment (master-)clock accuracy (over 1 day), also refered to as the ground-segment-related OBT-UTC time-correlation accuracy. The ground-segment-related OBT-UTC time-correlation performance contains contributions related to (i) the RMS residual error in the propagation delay, and (ii) the ground segment. Note that the improvement of the Space Link Extension (SLE) on-ground time-stamp resolution and the upgrade of the Intermediate Frequency and Modem System (IFMS) hardware to remove a 3E-6 s time offset / 'bias' have both been successfully concluded
     # <p>
     # Source: J. Lluch & G. Whitehead, 9 January 2009, 'OBT-UTC Time Synchronisation', GAIA-ESC-TN-0002, issue 2, revision 3<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    MASTERCLOCK_ACCURACY = 1.087 # [10^-6 s]

    #
     # Propagation-delay contribution to the ground-segment (master-)clock accuracy (over 1 day), also refered to as the ground-segment-related OBT-UTC time-correlation accuracy. This contribution covers the RMS residual error in the propagation delay, namely 0.100E-6 s due to residual calibration errors of tropospheric delays and 0.0834E-6 s due to the satellite position uncertainty left after restitution of the Gaia orbit
     # <p>
     # Source: J. Lluch & G. Whitehead, 9 January 2009, 'OBT-UTC Time Synchronisation', GAIA-ESC-TN-0002, issue 2, revision 3<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    MASTERCLOCK_ACCURACY_PROPAGATIONDELAY = 0.1302 # [10^-6 s]

    #
     # Ground-segment contribution to the ground-segment (master-)clock accuracy (over 1 day), also refered to as the ground-segment-related OBT-UTC time-correlation accuracy. This contribution covers 0.500E-6 s due to station RF propagation delay, 0.060E-6 s due to station-clock jitter (equivalent to a quantisation error due to a clock rate of 1 divided by the frequency of the clock), 0.400E-6 s due to station-clock drift, 0.100E-6 s due to the IFMS offset / 'bias', 0.700E-6 s due to delays caused by the on-ground convolutional decoding of the TM frames, and 0.050E-6 s due to measurement tools; note that the improvement of the Space Link Extension (SLE) on-ground time-stamp resolution and the upgrade of the Intermediate Frequency and Modem System (IFMS) hardware to remove a 3E-6 s time offset / 'bias' have both been successfully concluded
     # <p>
     # Source: J. Lluch & G. Whitehead, 9 January 2009, 'OBT-UTC Time Synchronisation', GAIA-ESC-TN-0002, issue 2, revision 3<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    MASTERCLOCK_ACCURACY_GROUNDSEGMENT = 0.9571 # [10^-6 s]

    #
     # The partial pressure e, in units of mbar, of water vapour at the Earth's surface is calculated using the 'Bean and Dutton model' (actually using the Antoine-August-Roche-Magnus-Tetens formulation for saturation vapour pressure in the pure phase with regard to water, neglecting the enhancement factor for moist air): e = e(T, RH) = (RH / 100) * e(T = 0) * 10^(a * T / (b + T)), where RH denotes the relative humidity in units of percent and T denotes ambient (dry-bulb) temperature in degrees Celsius. This constant refers to a. The reference documents lists a value of 7.5, extracted from O. Tetens, 1930, 'Ueber einige meteorologische Begriffe', Zeitschrift fuer Geophysik, 6, 297-309 (for a detailed discussion see, for instance, L.A. Buck, 1981, 'New equations for computing vapor pressure and enhancement factor', Journal of Applied Meteorology, 20, 1527-1532 or O.A. Alduchov, R.E. Eskridge, 1996, 'Improved Magnus form approximation of saturation vapour pressure', Journal of Applied Meteorology, 35, 601-609)
     # <p>
     # Source: F. Budnik (ESA), 29 June 2010, 'Gaia FDS-SOC Orbit ICD', GAIA-ESC-ICD-0012, issue 1, revision 1, Annex A. Reference documents: World Meteorological Organization (WMO), 2008, 'Guide to Meteorological Instruments and Methods of Observation (CIMO Guide)', Publication Number 8, 7-th edition, Annex 4B, ISBN 978-92-63-100085, http://www.wmo.int/pages/prog/www/IMOP/publications/CIMO-Guide/CIMO%20Guide%207th%20Edition,%202008/CIMO_Guide-7th_Edition-2008.pdf, F. Kleijer (Netherlands Geodetic Commission, Delft), 1 April 2004, 'Troposphere Modeling and Filtering for Precise GPS Leveling', Publications on Geodesy 56, ISBN 90 6132 284 7 (http://www.ncg.knaw.nl/Publicaties/Geodesy/pdf/56Kleijer.pdf and http://repository.tudelft.nl/view/ir/uuid%3Aea1f0cf0-4e48-421b-b7ae-4ae3e36d1880/), J. Saastamoinen, 1 January 1972, 'Atmospheric correction for the troposphere and stratosphere in radio ranging of satellites' in 'The use of artificial satellites for geodesy', editors S.W. Henrikson et al., Geophysical Monograph Series, 15, 247-251, and B.R. Bean and E.J. Dutton, 1 March 1966, 'Radio Meteorology', National Bureau of Standards Monograph, 92, 1-44<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    WATERVAPOURPRESSURECOEFFICIENT_A = 7.6523

    #
     # The tropospheric zenith delay \Delta\rho, in units of m, is calculated using the Saastamoinen model: \Delta\rho = \Delta\rho_{\rm alt} + 1E-6 * k_1 * (R_{\rm d}} / g_{\rm m}) * (p + ((k_3 / (k_1 * (\lambda + 1 - L * R_{\rm d}} / g_{\rm m}) * T)) + (k_2^\prime / (k_1 * (\lambda + 1)))) * e), where \Delta\rho_{\rm alt} is the dry-delay correction between the antenna tracking point and the barometer reading in m (parameter :GroundSegment:NiellMappingCoefficient_DryDelayCorrection), e is the partial pressure of water vapour at the Earth's surface in mbar (parameters :GroundSegment:WaterVapourPressureCoefficient_*), p is the total barometric surface pressure in mbar, T is the ambient temperature in degrees K, g_{\rm m} denotes the mean surface gravity of the Earth in m s^-2 (parameter :Nature:Earth_SurfaceGravity_Mean), R_{\rm d}} denotes the specific gas constant for dry air in m^2 s^-2 K^-1 (parameter :Nature:SpecificGas_Constant_DryAir), and R_{\rm v}} denotes the specific gas constant for water vapour in m^2 s^-2 K^-1 (parameter :Nature:SpecificGas_Constant_WaterVapour). The parameters k_1, k_2, k_2^\prime = k_2 - (R_{\rm d}} / R_{\rm v}}) * k_1, k_3, L, and \lambda are provided by parameters ZenithDelayCoefficient_KSub1, ZenithDelayCoefficient_KSub2, ZenithDelayCoefficient_KSub2Prime, ZenithDelayCoefficient_KSub3, ZenithDelayCoefficient_L, and ZenithDelayCoefficient_Lambda, all in :GroundSegment:. This parameter defines k_2^\prime = k_2 - (R_d / R_v) * k_1
     # <p>
     # Source: F. Budnik (ESA), 29 June 2010, 'Gaia FDS-SOC Orbit ICD', GAIA-ESC-ICD-0012, issue 1, revision 1, Annex A. Reference documents: F. Kleijer (Netherlands Geodetic Commission, Delft), 1 April 2004, 'Troposphere Modeling and Filtering for Precise GPS Leveling', Publications on Geodesy 56, ISBN 90 6132 284 7 (http://www.ncg.knaw.nl/Publicaties/Geodesy/pdf/56Kleijer.pdf and http://repository.tudelft.nl/view/ir/uuid%3Aea1f0cf0-4e48-421b-b7ae-4ae3e36d1880/), J. Saastamoinen, 1 January 1972, 'Atmospheric correction for the troposphere and stratosphere in radio ranging of satellites' in 'The use of artificial satellites for geodesy', editors S.W. Henrikson et al., Geophysical Monograph Series, 15, 247-251, and B.R. Bean and E.J. Dutton, 1 March 1966, 'Radio Meteorology', National Bureau of Standards Monograph, 92, 1-44<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    ZENITHDELAYCOEFFICIENT_KSUB2PRIME = 16.419 # [K mbar^-1]

    #
     # The tropospheric zenith delay \Delta\rho, in units of m, is calculated using the Saastamoinen model: \Delta\rho = \Delta\rho_{\rm alt} + 1E-6 * k_1 * (R_{\rm d}} / g_{\rm m}) * (p + ((k_3 / (k_1 * (\lambda + 1 - L * R_{\rm d}} / g_{\rm m}) * T)) + (k_2^\prime / (k_1 * (\lambda + 1)))) * e), where \Delta\rho_{\rm alt} is the dry-delay correction between the antenna tracking point and the barometer reading in m (parameter :GroundSegment:NiellMappingCoefficient_DryDelayCorrection), e is the partial pressure of water vapour at the Earth's surface in mbar (parameters :GroundSegment:WaterVapourPressureCoefficient_*), p is the total barometric surface pressure in mbar, T is the ambient temperature in degrees K, g_{\rm m} denotes the mean surface gravity of the Earth in m s^-2 (parameter :Nature:Earth_SurfaceGravity_Mean), R_{\rm d}} denotes the specific gas constant for dry air in m^2 s^-2 K^-1 (parameter :Nature:SpecificGas_Constant_DryAir), and R_{\rm v}} denotes the specific gas constant for water vapour in m^2 s^-2 K^-1 (parameter :Nature:SpecificGas_Constant_WaterVapour). The parameters k_1, k_2, k_2^\prime = k_2 - (R_{\rm d}} / R_{\rm v}}) * k_1, k_3, L, and \lambda are provided by parameters ZenithDelayCoefficient_KSub1, ZenithDelayCoefficient_KSub2, ZenithDelayCoefficient_KSub2Prime, ZenithDelayCoefficient_KSub3, ZenithDelayCoefficient_L, and ZenithDelayCoefficient_Lambda, all in :GroundSegment:. This parameter defines the first auxiliary coefficient defined as 1E-6 * k_1 * (R_d / g_{\rm m}). The reference document lists a value of 0.0022768 m mbar^-1
     # <p>
     # Source: F. Budnik (ESA), 29 June 2010, 'Gaia FDS-SOC Orbit ICD', GAIA-ESC-ICD-0012, issue 1, revision 1, Annex A. Reference documents: F. Kleijer (Netherlands Geodetic Commission, Delft), 1 April 2004, 'Troposphere Modeling and Filtering for Precise GPS Leveling', Publications on Geodesy 56, ISBN 90 6132 284 7 (http://www.ncg.knaw.nl/Publicaties/Geodesy/pdf/56Kleijer.pdf and http://repository.tudelft.nl/view/ir/uuid%3Aea1f0cf0-4e48-421b-b7ae-4ae3e36d1880/), J. Saastamoinen, 1 January 1972, 'Atmospheric correction for the troposphere and stratosphere in radio ranging of satellites' in 'The use of artificial satellites for geodesy', editors S.W. Henrikson et al., Geophysical Monograph Series, 15, 247-251, and B.R. Bean and E.J. Dutton, 1 March 1966, 'Radio Meteorology', National Bureau of Standards Monograph, 92, 1-44<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    ZENITHDELAYCOEFFICIENT_1 = 0.00227747 # [m mbar^-1]

    #
     # The tropospheric zenith delay \Delta\rho, in units of m, is calculated using the Saastamoinen model: \Delta\rho = \Delta\rho_{\rm alt} + 1E-6 * k_1 * (R_{\rm d}} / g_{\rm m}) * (p + ((k_3 / (k_1 * (\lambda + 1 - L * R_{\rm d}} / g_{\rm m}) * T)) + (k_2^\prime / (k_1 * (\lambda + 1)))) * e), where \Delta\rho_{\rm alt} is the dry-delay correction between the antenna tracking point and the barometer reading in m (parameter :GroundSegment:NiellMappingCoefficient_DryDelayCorrection), e is the partial pressure of water vapour at the Earth's surface in mbar (parameters :GroundSegment:WaterVapourPressureCoefficient_*), p is the total barometric surface pressure in mbar, T is the ambient temperature in degrees K, g_{\rm m} denotes the mean surface gravity of the Earth in m s^-2 (parameter :Nature:Earth_SurfaceGravity_Mean), R_{\rm d}} denotes the specific gas constant for dry air in m^2 s^-2 K^-1 (parameter :Nature:SpecificGas_Constant_DryAir), and R_{\rm v}} denotes the specific gas constant for water vapour in m^2 s^-2 K^-1 (parameter :Nature:SpecificGas_Constant_WaterVapour). The parameters k_1, k_2, k_2^\prime = k_2 - (R_{\rm d}} / R_{\rm v}}) * k_1, k_3, L, and \lambda are provided by parameters ZenithDelayCoefficient_KSub1, ZenithDelayCoefficient_KSub2, ZenithDelayCoefficient_KSub2Prime, ZenithDelayCoefficient_KSub3, ZenithDelayCoefficient_L, and ZenithDelayCoefficient_Lambda, all in :GroundSegment:. This parameter defines the second auxiliary coefficient defined as k_3 / (k_1 * (\lambda + 1 - L * R_d / g_{\rm m})). The reference document lists a value of 1255 K
     # <p>
     # Source: F. Budnik (ESA), 29 June 2010, 'Gaia FDS-SOC Orbit ICD', GAIA-ESC-ICD-0012, issue 1, revision 1, Annex A. Reference documents: F. Kleijer (Netherlands Geodetic Commission, Delft), 1 April 2004, 'Troposphere Modeling and Filtering for Precise GPS Leveling', Publications on Geodesy 56, ISBN 90 6132 284 7 (http://www.ncg.knaw.nl/Publicaties/Geodesy/pdf/56Kleijer.pdf and http://repository.tudelft.nl/view/ir/uuid%3Aea1f0cf0-4e48-421b-b7ae-4ae3e36d1880/), J. Saastamoinen, 1 January 1972, 'Atmospheric correction for the troposphere and stratosphere in radio ranging of satellites' in 'The use of artificial satellites for geodesy', editors S.W. Henrikson et al., Geophysical Monograph Series, 15, 247-251, and B.R. Bean and E.J. Dutton, 1 March 1966, 'Radio Meteorology', National Bureau of Standards Monograph, 92, 1-44<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    ZENITHDELAYCOEFFICIENT_2 = 1254.8 # [K]

    #
     # The tropospheric zenith delay \Delta\rho, in units of m, is calculated using the Saastamoinen model: \Delta\rho = \Delta\rho_{\rm alt} + 1E-6 * k_1 * (R_{\rm d}} / g_{\rm m}) * (p + ((k_3 / (k_1 * (\lambda + 1 - L * R_{\rm d}} / g_{\rm m}) * T)) + (k_2^\prime / (k_1 * (\lambda + 1)))) * e), where \Delta\rho_{\rm alt} is the dry-delay correction between the antenna tracking point and the barometer reading in m (parameter :GroundSegment:NiellMappingCoefficient_DryDelayCorrection), e is the partial pressure of water vapour at the Earth's surface in mbar (parameters :GroundSegment:WaterVapourPressureCoefficient_*), p is the total barometric surface pressure in mbar, T is the ambient temperature in degrees K, g_{\rm m} denotes the mean surface gravity of the Earth in m s^-2 (parameter :Nature:Earth_SurfaceGravity_Mean), R_{\rm d}} denotes the specific gas constant for dry air in m^2 s^-2 K^-1 (parameter :Nature:SpecificGas_Constant_DryAir), and R_{\rm v}} denotes the specific gas constant for water vapour in m^2 s^-2 K^-1 (parameter :Nature:SpecificGas_Constant_WaterVapour). The parameters k_1, k_2, k_2^\prime = k_2 - (R_{\rm d}} / R_{\rm v}}) * k_1, k_3, L, and \lambda are provided by parameters ZenithDelayCoefficient_KSub1, ZenithDelayCoefficient_KSub2, ZenithDelayCoefficient_KSub2Prime, ZenithDelayCoefficient_KSub3, ZenithDelayCoefficient_L, and ZenithDelayCoefficient_Lambda, all in :GroundSegment:. This parameter defines the third auxiliary coefficient defined as k_2^\prime / (k_1 * (\lambda + 1)). The reference document lists a value of 0.05
     # <p>
     # Source: F. Budnik (ESA), 29 June 2010, 'Gaia FDS-SOC Orbit ICD', GAIA-ESC-ICD-0012, issue 1, revision 1, Annex A. Reference documents: F. Kleijer (Netherlands Geodetic Commission, Delft), 1 April 2004, 'Troposphere Modeling and Filtering for Precise GPS Leveling', Publications on Geodesy 56, ISBN 90 6132 284 7 (http://www.ncg.knaw.nl/Publicaties/Geodesy/pdf/56Kleijer.pdf and http://repository.tudelft.nl/view/ir/uuid%3Aea1f0cf0-4e48-421b-b7ae-4ae3e36d1880/), J. Saastamoinen, 1 January 1972, 'Atmospheric correction for the troposphere and stratosphere in radio ranging of satellites' in 'The use of artificial satellites for geodesy', editors S.W. Henrikson et al., Geophysical Monograph Series, 15, 247-251, and B.R. Bean and E.J. Dutton, 1 March 1966, 'Radio Meteorology', National Bureau of Standards Monograph, 92, 1-44<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    ZENITHDELAYCOEFFICIENT_3 = 0.053

end



 class Mission
    #
     # Maximum-allowed total wet launch mass, excluding potential balance mass, derived as the launch-vehicle performance of 2175.0 kg minus the weight of the LVA/PAS, assumed to be 75.0 kg
     # <p>
     # Source: Numerical value supersedes the value of 2030.0 kg as listed in ESA, 11 March 2010, 'Gaia mission requirements document (MRD)', issue 3, revision 0, GAIA-EST-RD-00553, Requirement SYS-400<br/>
     # Status: TBC<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    LAUNCHMASS_REQUIREMENT = 2100.0 # [kg]

    #
     # Total wet launch mass, derived as the spacecraft dry mass (1662.2 kg) plus the chemical propulsion (335.0 kg) plus the micro-propulsion (57.6 kg)
     # <p>
     # Source: Current working hypothesis<br/>
     # Status: TBC<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    LAUNCHMASS = 2054.8 # [kg]

    #
     # Approximate duration of the pre-launch operations (e.g., final verifications, spacecraft - launch-vehicle coupling, transfer to the launch pad, battery reconditioning, propellant-tanks filling, etc.). The pre-launch phase ends at lift-off. The numerical value refers to 9 weeks. The Gaia launch campaign formally lasts about 3 months
     # <p>
     # Source: Current working hypothesis, based on A. Schnorhk (ESA), priv. comm., 24 March 2011<br/>
     # Status: TBC<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    LIFETIME_PRELAUNCHPHASE = 0.173 # [yr]

    #
     # Duration of the launch- and early-orbit phase (LEOP; launch, ascent phase, injection into the low-altitude circular parking orbit, launcher separation, telemetry activation, propulsion priming and attitude acquisition, launch-bipods release, sun-shield deployment, attitude acquisition, injection into the L2-cruise orbit, initial orbit correction for launcher-dispersion removal, and initiation of focal-plane decontamination). The numerical value refers to 2 days
     # <p>
     # Source: EADS-Astrium, 2 March 2011, 'In-Orbit Commissioning Plan', GAIA.ASF.PLN.SAT.00086, issue 1, revision 1<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    LIFETIME_LEOPHASE = 0.005 # [yr]

    #
     # Maximum value that the Sun-satelllite-Earth angle \alpha will reach in its nominal Lissajous orbit around L2 assuming average orbital amplitudes (parameters :Mission:Satellite_L2OrbitalAmplitudeX, :Mission:Satellite_L2OrbitalAmplitudeY, and :Mission:Satellite_L2OrbitalAmplitudeZ). The underlying equation neglects the effect of the orbital motion of L2
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    SATELLITE_SUNSATELLITEEARTHANGLE_MAXIMUM = 14.56 # [deg]

    #
     # Average orbital amplitude of Gaia's Lissajous orbit around L2 (in X; cf. the parameter :Nature:L2_OrbitalAmplitudeX_Minimum, which provides a minimum value). The actual average from :Mission:Satellite_L2Orbit, as calculated over all entries after orbit insertion, is 111244 km, This parameter remains to be updated for a new CReMA reference mission
     # <p>
     # Source: M. Landgraf and F. Renk, 9 July 2010, 'Gaia: Consolidated Report on Mission Analysis (CReMA)', issue 4.0, GAIA-ESC-RP-0001, Figure 4.13. See also F. Mignard, 8 March 2003, 'Prototype of the ephemeris of the Gaia spacecraft', GAIA-FM-014, Equations 1-2 and F. Mignard, 15 March 2002, 'Considerations on the orbit of Gaia for simulations', GAIA-FM-011, Equation 87 and Equations 70-71<br/>
     # Status: TBC<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    SATELLITE_L2ORBITALAMPLITUDEX = 111244.0 # [km]

    #
     # Maximum value of the satellite-Earth distance (approximate value assuming average orbital amplitudes; parameters :Mission:Satellite_L2OrbitalAmplitudeX, :Mission:Satellite_L2OrbitalAmplitudeY, and :Mission:Satellite_L2OrbitalAmplitudeZ)
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    SATELLITE_DISTANCETOEARTH_MAXIMUM = 1.68 # [10^6 km]

    #
     # Average value of the satellite-Earth distance (approximate value assuming average orbital amplitudes; parameters :Mission:Satellite_L2OrbitalAmplitudeX, :Mission:Satellite_L2OrbitalAmplitudeY, and :Mission:Satellite_L2OrbitalAmplitudeZ)
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    SATELLITE_DISTANCETOEARTH_AVERAGE = 1.51 # [10^6 km]

    #
     # Minimum value of the satellite-Earth distance (approximate value assuming average orbital amplitudes; parameters :Mission:Satellite_L2OrbitalAmplitudeX, :Mission:Satellite_L2OrbitalAmplitudeY, and :Mission:Satellite_L2OrbitalAmplitudeZ)
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    SATELLITE_DISTANCETOEARTH_MINIMUM = 1.37 # [10^6 km]

    #
     # Spacecraft availability, redefined by EADS-Astrium as the mission time minus outage periods due to reconfigurations necessitated by un-scheduled events and failures (reconfigurations due to failed equipment); failures of hot-redundant functions are not included. Note that this definition is formally in conflict with the MRD definition which is the time available in the operational orbit for scientific measurements not disturbed by nominal spacecraft operations (e.g., mode changes, propellant sloshing, AOCS/RCS calibrations, or orbit-maintenance manoeuvres). In EADS-Astrium's definition, outages due to scheduled actions (calibrations, orbit manoeuvres, etc.) are accounted for in the dead-time budget. Note that EADS-Astrium use a 5.500-year rather than a 5.250-year lifetime (parameters :Mission:LifeTime_CommissioningPhase and :Mission:LifeTime_OperationalPhase_Nominal) and assume that a year has 365.00 days rather than 365.25 days (parameter :Nature:JulianYear_Day)
     # <p>
     # Source: EADS-Astrium, 30 June 2010, 'Reliability and Availability Assessment', GAIA.ASF.BG.SAT.00005, issue 3, revision 0<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    SATELLITE_AVAILABILITY = 99.46 # [%]

     class AF
        #
         # Astrometric-data dead time, in units of percents of the operational lifetime. This parameter thus expresses the effective dead time causing astrometric science data to be unavailable during the a posteriori ground processing. The vector elements refer to [G = 10.0 mag, G = 15.0 mag, G = 20.0 mag]
         # <p>
         # Source: EADS-Astrium, 3 March 2011, 'Dead-time budget', GAIA.ASF.TCN.SAT.00133, issue 5, revision 1<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        DEADTIME = [ 11.062, 14.564, 14.166 ] # [%]

        #
         # Total astrometric-data dead time, in units of years over the nominal operational lifetime. The vector elements refer to [G = 10.0 mag, G = 15.0 mag, G = 20.0 mag]
         # <p>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        DEADTIME_YEAR = [ 0.553, 0.728, 0.708 ] # [yr]

        #
         # Nominal effective operational lifetime (effective observing time during which astrometric science data is collected, transmitted, and received on the ground), i.e., after subtraction of astrometric-data dead times. The vector elements refer to [G = 10.0 mag, G = 15.0 mag, G = 20.0 mag]
         # <p>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        LIFETIME_OPERATIONALPHASE_EFFECTIVE = [ 4.447, 4.272, 4.292 ] # [yr]

        end



     class BP
        #
         # Photometric-data dead time, in units of percents of the operational lifetime. This parameter thus expresses the effective dead time causing astrometric science data to be unavailable during the a posteriori ground processing. The vector elements refer to [G = 10.0 mag, G = 15.0 mag, G = 20.0 mag]
         # <p>
         # Source: EADS-Astrium, 3 March 2011, 'Dead-time budget', GAIA.ASF.TCN.SAT.00133, issue 5, revision 1<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        DEADTIME = [ 11.617, 16.150, 16.775 ] # [%]

        #
         # Total photometric-data dead time, in units of years over the nominal operational lifetime. The vector elements refer to [G = 10.0 mag, G = 15.0 mag, G = 20.0 mag]
         # <p>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        DEADTIME_YEAR = [ 0.581, 0.807, 0.839 ] # [yr]

        #
         # Nominal effective operational lifetime (effective observing time during which photometric science data is collected, transmitted, and received on the ground), i.e., after subtraction of photometric-data dead times. The vector elements refer to [G = 10.0 mag, G = 15.0 mag, G = 20.0 mag]
         # <p>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        LIFETIME_OPERATIONALPHASE_EFFECTIVE = [ 4.419, 4.193, 4.161 ] # [yr]

        end



     class RP
        #
         # Photometric-data dead time, in units of percents of the operational lifetime. This parameter thus expresses the effective dead time causing astrometric science data to be unavailable during the a posteriori ground processing. The vector elements refer to [G = 10.0 mag, G = 15.0 mag, G = 20.0 mag]
         # <p>
         # Source: EADS-Astrium, 3 March 2011, 'Dead-time budget', GAIA.ASF.TCN.SAT.00133, issue 5, revision 1<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        DEADTIME = [ 15.384, 19.797, 20.395 ] # [%]

        #
         # Total photometric-data dead time, in units of years over the nominal operational lifetime. The vector elements refer to [G = 10.0 mag, G = 15.0 mag, G = 20.0 mag]
         # <p>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        DEADTIME_YEAR = [ 0.769, 0.990, 1.020 ] # [yr]

        #
         # Nominal effective operational lifetime (effective observing time during which photometric science data is collected, transmitted, and received on the ground), i.e., after subtraction of photometric-data dead times. The vector elements refer to [G = 10.0 mag, G = 15.0 mag, G = 20.0 mag]
         # <p>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        LIFETIME_OPERATIONALPHASE_EFFECTIVE = [ 4.231, 4.010, 3.980 ] # [yr]

        end



     class RVS
        #
         # Spectroscopic-data dead time, in units of percents of the operational lifetime. This parameter thus expresses the effective dead time causing astrometric science data to be unavailable during the a posteriori ground processing. The vector elements refer to [G_RVS = 10.0 mag, G_RVS = 15.0 mag, G_RVS = 16.5 mag]. Note that faint-star spectra (Class 1 and Class 2) obtained in HR mode are considered to be useless and are counted as data loss / dead time
         # <p>
         # Source: EADS-Astrium, 3 March 2011, 'Dead-time budget', GAIA.ASF.TCN.SAT.00133, issue 5, revision 1<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        DEADTIME = [ 13.869, 39.512, 39.505 ] # [%]

        #
         # Total spectroscopic-data dead time, in units of years over the nominal operational lifetime. The vector elements refer to [G_RVS = 10.0 mag, G_RVS = 15.0 mag, G_RVS = 16.5 mag]
         # <p>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        DEADTIME_YEAR = [ 0.693, 1.976, 1.975 ] # [yr]

        #
         # Nominal effective operational lifetime (effective observing time during which spectroscopic science data is collected, transmitted, and received on the ground), i.e., after subtraction of spectroscopic-data dead times. The vector elements refer to [G_RVS = 10.0 mag, G_RVS = 15.0 mag, G_RVS = 16.5 mag]
         # <p>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        LIFETIME_OPERATIONALPHASE_EFFECTIVE = [ 4.307, 3.024, 3.025 ] # [yr]

        end



end



 class Satellite
    #
     # Along-scan high-frequency(-integrated) attitude noise/disturbance (HFAD; RMS value; also known as AHFD for attitude high-frequency disturbance). The budget contains the following contributors: the AOCS and micro-disturbance. Contributors in the budget are summed in a root-sum-square sense since they correspond to different frequency ranges
     # <p>
     # Source: EADS-Astrium, 4 January 2012, 'Pointing Budget Report', GAIA.ASF.TCN.SAT.00023, issue 4, revision 2, Section 5.3<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    ATTITUDE_HIGHFREQUENCYNOISE_AL = 2.2 # [10^-6 arcsec]

    #
     # Across-scan high-frequency(-integrated) attitude noise/disturbance (HFAD; RMS value; also known as AHFD for attitude high-frequency disturbance) for [FoV1, FoV2]. The budget contains the following contributors: the AOCS and micro-disturbance. Contributors in the budget are summed in a root-sum-square sense since they correspond to different frequency ranges
     # <p>
     # Source: EADS-Astrium, 4 January 2012, 'Pointing Budget Report', GAIA.ASF.TCN.SAT.00023, issue 4, revision 2, Section 5.3<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    ATTITUDE_HIGHFREQUENCYNOISE_AC = [ 7.6, 7.6 ] # [10^-6 arcsec]

    #
     # Basic angle expressed as a time delay between FoV2 and FoV1 (stars transit FoV1 first)
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    BASICANGLE_SECOND = 6390.00 # [s]

    #
     # Random basic-angle variations (peak-to-peak) over the nominal spin period (P = 6 h). The numerical value represents the worst-case prediction and includes a 50% uncertainty margin
     # <p>
     # Source: EADS-Astrium, 14 September 2010, 'Basic angle variation stability budget report', GAIA.ASF.BG.SAT.00013, issue 4, revision 0<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    BASICANGLE_STABILITY_RANDOM = 2.9 # [10^-6 arcsec (over 6 h)]

    #
     # Systematic basic-angle variations over the nominal spin period (P = 6 h). The word 'systematic' has to be understood as the peak-to-peak value of the variations at the spacecraft-spin frequency (inverse of the spin period P). The numerical value represents the worst-case prediction and includes a 50% uncertainty margin
     # <p>
     # Source: EADS-Astrium, 14 September 2010, 'Basic angle variation stability budget report', GAIA.ASF.BG.SAT.00013, issue 4, revision 0<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    BASICANGLE_STABILITY_SYSTEMATIC = 6.1 # [10^-6 arcsec (over 6 h)]

    #
     # TDI (line) period: the nominal total duration of a line in is 19656 master-clock periods
     # <p>
     # Source: EADS-Astrium, 27 January 2010, 'Focal-Plane Assembly General Design Description (FPA GDD)', GAIA.ASF.TCN.PLM.00055, issue 5, revision 0<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    CCD_TDIPERIOD = 0.982800 # [ms]

    #
     # TDI (clocking) frequency, i.e., the frequency at which the charges are transfered from one pixel to the next pixel in the image section
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    CCD_TDIFREQUENCY = 1017.501 # [Hz]

    #
     # Exposure (integration) time of a (full) CCD, excluding the effect of any (permanent) TDI-gate activation. The Aluminium mask blocking TDI lines 1, 2, 5, 6, 9, and 10 on each CCD (see parameter :Satellite:CCD_TDILine_Blocked) has been included in the calculation of the number of light-sensitive pixels
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    CCD_EXPOSURETIME = 4.41670320 # [s]

    #
     # Number of light-sensitive pixels in (the image section of) a CCD in the along-scan direction. This number differs from the number of TDI lines (parameter :Satellite:CCD_NumberOfTDILines) since TDI lines 1, 2, 5, 6, 9, and 10 are covered by an Aluminium mask (see parameter :Satellite:CCD_TDILine_Blocked). Any (permanent) TDI-gate activation is not included in the calculations
     # <p>
     # Source: e2v technologies, 20 February 2007, 'Astro AF CCD Technical Note: The Effects of the Opaque Light Shield on TDI Mode PRNU', GAIA-E2V-TN-129, issue 1 and e2v technologies, 23 January 2008, 'Interface Control Document (ICD) Astro AF CCD FM', GAIA-E2V-TN-118, issue 5. Note that the remark that 'with no gate selected, the TDI length is ... all 4496 non-shielded rows of the image section' made in the 'AF CCD Design Report' (GAIA-E2V-RP-020, issue 2) is incorrect (see also J.H.J. de Bruijne, 6 June 2008, 'CCD pixel-pitch non-uniformity, stitch boundaries, and supplementary buried channel', GAIA-CH-TN-ESA-JDB-043, issue 1, revision 1)<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    CCD_LIGHTSENSITIVEAREA_AL_PIXEL = 4494 # [AL pixel]

    #
     # Number of light-sensitive pixels in (the image section of) a CCD in the across-scan direction
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    CCD_LIGHTSENSITIVEAREA_AC_PIXEL = 1966 # [AC pixel]

    #
     # Number of light-sensitive pixels in (the image section of) a CCD. Any (permanent) TDI-gate activation is not included in the calculations
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    CCD_LIGHTSENSITIVEAREA_PIXEL = 8835204 # [pixel]

    #
     # The 12 CCD TDI-gate positions: the numbers indicate the TDI line numbers at which the gate is located. Since TDI gates are physically associated to phase 1 under a pixel, TDI lengths include the signal contribution from the pixel in which the gate is located. The numbering includes the presence of the Aluminium mask blocking TDI lines 1, 2, 5, 6, 9, and 10 on each CCD (see parameter :Satellite:CCD_TDILine_Blocked). The active lengths of the TDI gates are detailed in parameter :Satellite:CCD_TDIGate_Length. TDI lines are numbered such that the line closest to the readout register is number 1 (the TDI-line numbering used in EADS-Astrium, 27 January 2010, 'Focal-Plane Assembly General Design Description (FPA GDD)', GAIA.ASF.TCN.PLM.00055, issue 5, revision 0, page 19 and in e2v technologies, 23 January 2008, 'Interface Control Document (ICD) Astro AF CCD FM', GAIA-E2V-TN-118, issue 5 is erroneous; the correct convention can be found in U. Bastian, 5 July 2007, 'Reference systems, conventions, and notations for Gaia', GAIA-CA-SP-ARI-BAS-003-06, issue 6, revision 1 and in ESA, 30 March 2007, 'Detailed Procurement Specification for the Gaia Flight Model Astro AF CCDs', SCI-PP/228/PG, issue 3, revision 0)
     # <p>
     # Source: e2v technologies, 20 February 2007, 'Astro AF CCD Technical Note: The Effects of the Opaque Light Shield on TDI Mode PRNU', GAIA-E2V-TN-129, issue 1<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    CCD_TDIGATE_POSITION = [ 5, 9, 14, 22, 38, 70, 134, 262, 518, 1030, 2054, 2906 ] # [AL pixel]

    #
     # Effective exposure (integration) time of a CCD, including the effect of (permanent) TDI-gate activation and including the effect of the Aluminium mask blocking TDI lines 1, 2, 5, 6, 9, and 10 on each CCD (see parameter :Satellite:CCD_TDILine_Blocked)
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    CCD_EXPOSURETIME_EFFECTIVE = [ 0.00196560, 0.00393120, 0.00786240, 0.01572480, 0.03144960, 0.06289920, 0.12579840, 0.25159680, 0.50319360, 1.00638720, 2.01277440, 2.85012000 ] # [s]

    #
     # Between the read-out node and the light-sentive columns of the CCD, 15 pre-scan pixels are located (see :Satellite:CCD_PreScanArea_Pixel). The first of these pre-scan pixels is always dumped by the PEM and is therefore ignored in the numbering. The second pre-scan pixel is numbered 'column 0'. The first light-sensitive column of each CCD therefore has column identifier 14
     # <p>
     # Source: EADS-Astrium, 14 June 2011, 'VPU Requirements Specification', GAIA.ASU.SP.PLM.00024, issue 3, revision 2<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    CCD_LIGHTSENSITIVEAREA_AC_ZEROPOINT = 14 # [AC pixel]

    #
     # Minimum in-orbit operating temperature of a CCD in the focal plane
     # <p>
     # Source: EADS-Astrium, 31 August 2010, 'PLM thermal analysis (at S/C CDR)', GAIA.ASD.TCN.PLM.00040, issue 3, revision 0, Section 7.2.1 'Nominal operation case (Hot Case)'<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    CCD_TEMPERATURE_MINIMUM = 163.82 # [K]

    #
     # Typical (average) in-orbit operating temperature of a CCD
     # <p>
     # Source: EADS-Astrium, 31 August 2010, 'PLM thermal analysis (at S/C CDR)', GAIA.ASD.TCN.PLM.00040, issue 3, revision 0, Section 7.2.1 'Nominal operation case (Hot Case)'<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    CCD_TEMPERATURE_AVERAGE = 168.86 # [K]

    #
     # Maximum in-orbit operating temperature of a CCD in the focal plane
     # <p>
     # Source: EADS-Astrium, 31 August 2010, 'PLM thermal analysis (at S/C CDR)', GAIA.ASD.TCN.PLM.00040, issue 3, revision 0, Section 7.2.1 'Nominal operation case (Hot Case)'<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    CCD_TEMPERATURE_MAXIMUM = 172.12 # [K]

    #
     # Pixel-full-well capacity (FWC) of the summing register (also known as the summing well) of a CCD
     # <p>
     # Source: EADS-Astrium, 27 January 2010, 'Focal-Plane Assembly General Design Description (FPA GDD)', GAIA.ASF.TCN.PLM.00055, issue 5, revision 0, page 21<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    CCD_PIXELFULLWELLCAPACITY_SUMMINGREGISTER = 380000.0 # [e^-]

    #
     # Pixel-full-well capacity (FWC) of the readout register of a CCD
     # <p>
     # Source: EADS-Astrium, 27 January 2010, 'Focal-Plane Assembly General Design Description (FPA GDD)', GAIA.ASF.TCN.PLM.00055, issue 5, revision 0, page 21<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    CCD_PIXELFULLWELLCAPACITY_READOUTREGISTER = 475000.0 # [e^-]

    #
     # CCD-line duration, also known as the period of the parallel transfer-gate clock
     # <p>
     # Source: EADS-Astrium, 27 January 2010, 'Focal-Plane Assembly General Design Description (FPA GDD)', GAIA.ASF.TCN.PLM.00055, issue 5, revision 0<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    CCD_LINEDURATION = 0.982800 # [ms]

    #
     # Total number of scientific CCDs in Gaia. Note that Gaia, in addition to these scientific CCDs, contains 2 BAM and 2 WFS CCDs
     # <p>
     # Source: EADS-Astrium, 27 January 2010, 'Focal-Plane Assembly General Design Description (FPA GDD)', GAIA.ASF.TCN.PLM.00055, issue 5, revision 0<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    CCD_NUMBER = 102

    #
     # Pixel angular area of a CCD in the along-scan direction
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    CCD_PIXELANGULARAREA_AL_MILLIARCSECOND = 58.933 # [mas]

    #
     # Pixel angular area of a CCD in the across-scan direction
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    CCD_PIXELANGULARAREA_AC_MILLIARCSECOND = 176.798 # [mas]

    #
     # Pixel angular area of a CCD
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    CCD_PIXELANGULARAREA_MILLIARCSECONDSQUARE = 10419.225 # [mas^2]

    #
     # Physical dimension of the light-sensitive image-section size of a CCD in the along-scan direction. The Aluminium mask blocking TDI lines 1, 2, 5, 6, 9, and 10 on each CCD (see parameter :Satellite:CCD_TDILine_Blocked) has been included in the calculation of the number of light-sensitive pixels. Any (permanent) TDI-gate activation is not included
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    CCD_LIGHTSENSITIVEAREA_AL_MILLIMETER = 44.94 # [mm]

    #
     # Physical dimension of the light-sensitive image-section size of a CCD in the across-scan direction
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    CCD_LIGHTSENSITIVEAREA_AC_MILLIMETER = 58.98 # [mm]

    #
     # Total number of light-sensitive pixels in (the image sections of) all scientific CCDs in Gaia (i.e., the total number of scientifically-active pixels in Gaia). Any (permanent) TDI-gate activation is not included in the calculations
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    CCD_LIGHTSENSITIVEAREA_PIXELTOTAL = 901190808 # [pixel]

    #
     # Dead time due to single-event effects (SEEs), in units of percents of the operational lifetime, shown to be negligibly small
     # <p>
     # Source: EADS-Astrium, 3 March 2011, 'Dead-time budget', GAIA.ASF.TCN.SAT.00133, issue 5, revision 1<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    DEADTIME_SINGLEEVENTEFFECTS = 0.00 # [%]

    #
     # Dead time due to solar activity, in units of percents of the operational lifetime. A PPE rate of 1300 particles cm^-2 s^-1 (parameters :Nature:SolarProton_Flux_L2 + :Nature:CosmicRay_Flux_L2) is assumed to correspond to the operational limit below which Gaia functions nominally and above which the spacecraft will be in AOCS TranSition Mode (TSM), either due to an insufficient star flow for AOCS purposes (since stars are swamped by PPEs in SM/AF1) or due to a PPE-blinded star tracker
     # <p>
     # Source: EADS-Astrium, 3 March 2011, 'Dead-time budget', GAIA.ASF.TCN.SAT.00133, issue 5, revision 1<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    DEADTIME_SOLARACTIVITY_AOCS = 0.73 # [%]

    #
     # Dead time due to Gaia unavailability, in units of percents of the operational lifetime (see also parameter :Mission:Satellite_Availability and EADS-Astrium, 30 June 2010, 'Reliability and Availability Assessment', GAIA.ASF.BG.SAT.00005, issue 3, revision 0). Unavailability is defined by EADS-Astrium as outage periods due to reconfigurations necessitated by un-scheduled events and failures (reconfigurations due to failed equipment); failures of hot-redundant functions are not included. The dead time includes operational and thermal recovery time
     # <p>
     # Source: EADS-Astrium, 3 March 2011, 'Dead-time budget', GAIA.ASF.TCN.SAT.00133, issue 5, revision 1<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    DEADTIME_AVAILABILITY = 0.54 # [%]

    #
     # Dead time due to spacecraft orbit-maintenance manoeuvres, in units of percents of the operational lifetime (see EADS-Astrium, 4 January 2012, 'Pointing Budget Report', GAIA.ASF.TCN.SAT.00023, issue 4, revision 2, Figure 8.1-1, where the prediction is 116 minutes per manoeuvre; one manoeuvre is scheduled every 28 days)
     # <p>
     # Source: EADS-Astrium, 3 March 2011, 'Dead-time budget', GAIA.ASF.TCN.SAT.00133, issue 5, revision 1<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    DEADTIME_ORBITMAINTENANCE = 0.29 # [%]

    #
     # Dead time due to (partial) solar eclipses caused by the Moon, in units of percents of the operational lifetime. Solar eclipses by the Moon will happen in the nominal operational phase: 9 eclipses with a cumulative duration of 66.68 h are predicted for the CReMA 2.1 reference mission case on the reference orbit. A thermal recovery time up to 3 days is needed after each eclipse before nominal science operations can be resumed (this dead time is included in the calculations)
     # <p>
     # Source: EADS-Astrium, 3 March 2011, 'Dead-time budget', GAIA.ASF.TCN.SAT.00133, issue 5, revision 1<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    DEADTIME_SOLARECLIPSESBYMOON = 1.63 # [%]

    #
     # Dead time due to micro-meteoroid impacts causing AOCS losses, in units of percents of the operational lifetime, assumed to be 6.5 h per year (see EADS-Astrium, 4 January 2012, 'Pointing Budget Report', GAIA.ASF.TCN.SAT.00023, issue 4, revision 2, Table 8.2-1)
     # <p>
     # Source: EADS-Astrium, 3 March 2011, 'Dead-time budget', GAIA.ASF.TCN.SAT.00133, issue 5, revision 1<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    DEADTIME_MICROMETEOROIDS_AOCS = 0.07 # [%]

    #
     # Nominal value of the 'plate scale' of the focal plane
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    FOCALPLANE_PLATESCALE = 169.685 # [10^-6 m arcsec^-1]

    #
     # Nominal speed at which stars transit the focal plane. Note that second-order scanning-law effects are ignored (see L. Lindegren, 21 September 2004, 'The speed of a star image in the Gaia field of view from general attitude motion or scanning law', GAIA-LL-056)
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    FOCALPLANE_STARTRANSITSPEED_AL_MILLIMETERPERSECOND = 10.18 # [mm s^-1]

    #
     # The transverse speed of stars in the focal plane varies sinusoidally with a period equal to the spin period (parameter :Satellite:ScanPeriod_Nominal; see, e.g., F. Mignard, 10 December 2001, 'A practical scanning law for Gaia simulations', GAIA-FM-010, Section 3) and with a maximum amplitude of this size (the amplitude is subject to a small seasonal variation, and this value denotes the maximum value). Note that second-order scanning-law effects are ignored (see L. Lindegren, 21 September 2004, 'The speed of a star image in the Gaia field of view from general attitude motion or scanning law', GAIA-LL-056)
     # <p>
     # Source: L. Lindegren, 19 February 2001, 'Calculating the Gaia nominal scanning law', SAG-LL-035, Section 2, item 3, page 2; note that the values listed there are erroneous, being based on a variation factor of (1+e) rather than (1+e)^2 (typo confirmed by L. Lindegren, priv. comm., 7 January 2003)<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    FOCALPLANE_STARTRANSITSPEED_AC_MAXIMUMMILLIARCSECONDPERSECOND = 179.178 # [mas s^-1]

    #
     # The transverse speed of stars in the focal plane varies sinusoidally with a period equal to the spin period (parameter :Satellite:ScanPeriod_Nominal; see, e.g., F. Mignard, 10 December 2001, 'A practical scanning law for Gaia simulations', GAIA-FM-010, Section 3) and with an average amplitude of this size (the amplitude is subject to a small seasonal variation, and this value denotes the average value). Note that second-order scanning-law effects are ignored (see L. Lindegren, 21 September 2004, 'The speed of a star image in the Gaia field of view from general attitude motion or scanning law', GAIA-LL-056)
     # <p>
     # Source: L. Lindegren, 19 February 2001, 'Calculating the Gaia nominal scanning law', SAG-LL-035, Section 2, item 3, page 2<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    FOCALPLANE_STARTRANSITSPEED_AC_AVERAGEMILLIARCSECONDPERSECOND = 173.337 # [mas s^-1]

    #
     # The transverse speed of stars in the focal plane varies sinusoidally with a period equal to the spin period (parameter :Satellite:ScanPeriod_Nominal; see, e.g., F. Mignard, 10 December 2001, 'A practical scanning law for Gaia simulations', GAIA-FM-010, Section 3) and with a minimum amplitude of this size (the amplitude is subject to a small seasonal variation, and this value denotes the minimum value). Note that second-order scanning-law effects are ignored (see L. Lindegren, 21 September 2004, 'The speed of a star image in the Gaia field of view from general attitude motion or scanning law', GAIA-LL-056)
     # <p>
     # Source: L. Lindegren, 19 February 2001, 'Calculating the Gaia nominal scanning law', SAG-LL-035, Section 2, item 3, page 2; note that the values listed there are erroneous, being based on a variation factor of (1-e) rather than (1-e)^2 (typo confirmed by L. Lindegren, priv. comm., 7 January 2003)<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    FOCALPLANE_STARTRANSITSPEED_AC_MINIMUMMILLIARCSECONDPERSECOND = 167.592 # [mas s^-1]

    #
     # The transverse speed of stars in the focal plane varies sinusoidally with a period equal to the spin period (parameter :Satellite:ScanPeriod_Nominal; see, e.g., F. Mignard, 10 December 2001, 'A practical scanning law for Gaia simulations', GAIA-FM-010, Section 3) and with a typical amplitude of this size (the amplitude is subject to a small seasonal variation, which is ignored here). Note that second-order scanning-law effects are ignored (see L. Lindegren, 21 September 2004, 'The speed of a star image in the Gaia field of view from general attitude motion or scanning law', GAIA-LL-056)
     # <p>
     # Source: L. Lindegren, 19 February 2001, 'Calculating the Gaia nominal scanning law', SAG-LL-035, Section 2, item 3, page 2<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    FOCALPLANE_STARTRANSITSPEED_AC_TYPICALMILLIARCSECONDPERSECOND = 110.349 # [mas s^-1]

    #
     # Average rate at which stars (G <= 20.00 mag) transit the SM/AF/BP/RP parts of the focal plane ('average star flow per viewing direction/telescope')
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    FOCALPLANE_STARFLOWRATE_AL_AVERAGE = 283.0 # [star s^-1]

    #
     # Typical rate at which stars (G <= 20.00 mag) transit the SM/AF/BP/RP parts of the focal plane ('typical star flow per viewing direction/telescope')
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    FOCALPLANE_STARFLOWRATE_AL_TYPICAL = 1690.0 # [star s^-1]

    #
     # Design-value of the rate at which stars (G <= 20.00 mag) transit the SM/AF/BP/RP parts of the focal plane ('design-value of the star flow per viewing direction/telescope')
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    FOCALPLANE_STARFLOWRATE_AL_DESIGN = 6759.0 # [star s^-1]

    #
     # Maximum rate at which stars (G <= 20.00 mag) transit the SM/AF/BP/RP parts of the focal plane ('maximum star flow per viewing direction/telescope')
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    FOCALPLANE_STARFLOWRATE_AL_WORSTCASE = 33793.0 # [star s^-1]

    #
     # Total FoV (i.e., including dead zones between CCDs) in the across-scan direction per viewing direction (telescope)
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    FOV_AC = 0.69079 # [deg]

    #
     # Total actice FoV (i.e., excluding dead zones between CCDs) in the across-scan direction per viewing direction (telescope)
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    FOV_AC_ACTIVE = 0.67586 # [deg]

    #
     # Total FoV (i.e., including 'intra-instrument' but excluding 'inter-instrument' dead zones between CCDs), in the along-scan direction, per viewing direction (telescope)
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    FOV_AL = 1.16761 # [deg]

    #
     # Total FoV (i.e., including dead zones between CCDs) per viewing direction (telescope)
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    FOV = 0.73672 # [deg^2]

    #
     # Total active FoV (i.e., excluding dead zones between CCDs) per viewing direction (telescope)
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    FOV_ACTIVE = 0.67479 # [deg^2]

    #
     # Effective, worst-case, beginning-of-life reflectivity/transmissivity attenuation of the SM/AF field of view (averaged over the two viewing directions) caused by particulate and molecular contamination of all optics and detectors, conservatively ignoring the in-obit de-contamination / payload out-gassing phase
     # <p>
     # Source: EADS-Astrium, 25 February 2011, 'Science Performance Budget Report', GAIA.ASF.RP.SAT.00005, issue 5, revision 0, based on EADS-Astrium, 30 November 2011, 'Gaia payload contamination analysis', GAIA.ASF.TCN.PLM.00036, issue 4, revision 0<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    OPTICS_ATTENUATION_PARTICULATEANDMOLECULARCONTAMINATION = 8.31 # [%]

    #
     # For a wavelength \lambda [nm], the effective reflectivity/transmissivity attenuation linked to scattered light caused by surface rugosity equals \exp[-4.6 * (2 \pi / \lambda [nm])^2 * (SUM)], where SUM = SUM_{\rm optical surfaces} (\Delta n * rugosity [nm])^2, with rugosity the surface rugosity of the optical surface and \Delta n the difference between the refractive index before and after the optical surface, i.e., \Delta n = 2.0 for reflection on a mirror and \Delta n = 0.5 for transmission through glass/vacuum diopters. This parameter defines the effective rugosity of the SM/AF instrument, i.e., SQRT(SUM). The surface rugosity equals 2 nm RMS for the M1 mirror and 1 nm RMS for all other surfaces (M2-M6 mirrors, BP/RP prism faces, RVS OMA prism faces, RVS grating faces, and RVS filter-plate faces)
     # <p>
     # Source: EADS-Astrium, 25 February 2011, 'Science Performance Budget Report', GAIA.ASF.RP.SAT.00005, issue 5, revision 0<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    OPTICS_RUGOSITY_EFFECTIVE = 6.00 # [nm]

    #
     # Along-scan relative pointing error (RPE; 3\sigma value, corresponding to 99.73%), defined as the standard deviation of the absolute pointing error over a CCD integration time \tau_1. The budget contains the following contributors: the AOCS and micro-disturbance. Contributors in the budget are summed linearly
     # <p>
     # Source: EADS-Astrium, 4 January 2012, 'Pointing Budget Report', GAIA.ASF.TCN.SAT.00023, issue 4, revision 2, Section 5.3<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    POINTING_RELATIVEERROR_AL = 1.8 # [mas]

    #
     # Across-scan relative pointing error (RPE; 3\sigma value, corresponding to 99.73%), defined as the standard deviation of the absolute pointing error over a CCD integration time \tau_1, for [FoV1, FoV2]. The budget contains the following contributors: the AOCS and micro-disturbance. Contributors in the budget are summed linearly
     # <p>
     # Source: EADS-Astrium, 4 January 2012, 'Pointing Budget Report', GAIA.ASF.TCN.SAT.00023, issue 4, revision 2, Section 5.3<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    POINTING_RELATIVEERROR_AC = [ 7.1, 9.2 ] # [mas]

    #
     # Nominal inertial spin period of the satellite around the SRS z-axis
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    SCANPERIOD_NOMINAL = 6.000 # [h]

    #
     # Value of the inertial scan rate (spin rate) of the satellite around the SRS z-axis, defined - for a given CCD TDI period (and along-scan pixel dimension) and the design-value of the telescope focal length - as the speed with which electrons move through the CCDs in TDI mode
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    SCANRATE = 59.9641857803 # [arcsec s^-1]

    #
     # Speed of the spin axis on the sky, defined as S = dz / d\lambda_s, with z = spin axis vector on the sky and \lambda_s = ecliptic longitude of the nominal Sun (or, equivalently, as the ratio of the rate of change of the SRS z-axis direction and the rate of change of \lambda_s). The case S = constant is refered to as 'uniform revolving scanning'
     # <p>
     # Source: F. Mignard, 5 April 2012, 'Validation of the analytical NSL for the Jupiter experiment', GAIA-CA-TN-OCA-FM-037-02, issue 2, revision 0, Equation 26<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    SPINAXIS_PRECESSIONRATE = 4.2207450212

    #
     # Precession period of the spin axis on the sky for given values of S, the precession speed of the spin axis on the sky, and K, the number of spin-axis revolutions around the solar direction per Julian year
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    SPINAXIS_PRECESSIONPERIOD = 62.97 # [day]

    #
     # Telescope-entrance-pupil area
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    TELESCOPE_PUPILAREA = 0.7483 # [m^2]

    #
     # Design freedom of the telescope effective focal length
     # <p>
     # Source: EADS-Astrium, 25 June 2010, 'PayLoad Module (PLM) Requirements Specification', GAIA.ASF.SP.PLM.00009, issue 5, revision 0, Requirement PLM-899<br/>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    TELESCOPE_FOCALLENGTH_DESIGNFREEDOM = 0.350 # [m]

    #
     # Average transmission of the telescopes at (roughly) the wavelength of the BAM laser, i.e., 850 nm. This transmissivity does neither include the transmissivity attenuation linked to scattered light caused by surface rugosity (see parameter Optics_Rugosity_Effective) nor the transmissivity attenuation caused by particulate and molecular contamination of all optics and detectors (see parameter Optics_Attenuation_ParticulateAndMolecularContamination)
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    TELESCOPE_TRANSMISSIVITY_850NM = 0.836

    #
     # Average transmission of the telescopes at 860 nm. This transmissivity does neither include the transmissivity attenuation linked to scattered light caused by surface rugosity (see parameter Optics_Rugosity_Effective) nor the transmissivity attenuation caused by particulate and molecular contamination of all optics and detectors (see parameter Optics_Attenuation_ParticulateAndMolecularContamination)
     # <p>
     # Status: CONF<br/>
     # Basic : false<br/>
     # Scalar: true
     #
    TELESCOPE_TRANSMISSIVITY_860NM = 0.840

     class AF
        #
         # Nominal thickness of the field-free region of a default (broad-band) CCD, in use in AF
         # <p>
         # Source: T. Eaton, e2v Technologies, 16 June 2006, 'Gaia CCD FM phase performance assessment report', GAIA-E2V-RP-123, issue 1, Section 3.1.1.6, page 10. Reference documents: A. Short, J.H.J. de Bruijne, 26 September 2003, 'CCD QE and MTF', GAIA-AS-002, Section 4.2 and R. Kohley, 4 February 2009, 'Quantum Efficiency and Pixel Response Non-Uniformity in Gaia CCDs', GAIA-CH-TN-ESAC-RKO-003-01, issue 1, revision 0<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        CCD_THICKNESS_FIELDFREEREGION = 4.0 # [10^-6 m]

        #
         # CCD total detection noise (TDN) in units of electrons (typical value). Total detection noise includes CCD readout noise (RON), CCD dark noise, KTC noise, overall video-chain noise (including ADC noise, analogue noise, and quantisation noise), and coupling and EMC-effects noise
         # <p>
         # Source: EADS-Astrium, 4 January 2010, 'Focal-Plane Assembly (FPA) Performance Budget', GAIA.ASF.BG.PLM.00008, issue 5, revision 0<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        CCD_DETECTIONNOISE_TYPICALTOTAL = 4.35 # [e^-]

        #
         # CCD node capacitance; the factor 0.64 refers to a two-stage amplifier
         # <p>
         # Source: EADS-Astrium, 4 January 2010, 'Focal-Plane Assembly (FPA) Performance Budget', GAIA.ASF.BG.PLM.00008, issue 5, revision 0<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        CCD_NODECAPACITANCE = 15.98 # [fF]

        #
         # CCD amplifier bandwidth, calculated as 1 / (2 \pi \tau) and assuming a time constant \tau = 40 ns, as measured by e2v
         # <p>
         # Source: EADS-Astrium, 27 January 2010, 'Focal-Plane Assembly General Design Description (FPA GDD)', GAIA.ASF.TCN.PLM.00055, issue 5, revision 0, page 61<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        CCD_AMPLIFIERBANDWIDTH = 3978.9 # [kHz]

        #
         # Number of CCDs in AF
         # <p>
         # Source: EADS-Astrium, 27 January 2010, 'Focal-Plane Assembly General Design Description (FPA GDD)', GAIA.ASF.TCN.PLM.00055, issue 5, revision 0<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        CCD_NUMBER = 62

        #
         # Total number of light-sensitive pixels in (the image sections of) all AF CCDs. Any (permanent) TDI-gate activation is not included in the calculations
         # <p>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        CCD_LIGHTSENSITIVEAREA_PIXELTOTAL = 547782648 # [pixel]

        #
         # Dead time due to in-orbit (re-)calibration of the instruments, in units of percents of the operational lifetime (see E. Hoeg and J.H.J. de Bruijne, 18 January 2007, 'Calibration of gates and magnitude scale', GAIA-CA-TN-NBI-EH-182-01)
         # <p>
         # Source: EADS-Astrium, 3 March 2011, 'Dead-time budget', GAIA.ASF.TCN.SAT.00133, issue 5, revision 1<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        DEADTIME_CALIBRATION = 0.82 # [%]

        #
         # Dead time due to straylight of the Earth and Moon, in units of percents of the operational lifetime
         # <p>
         # Source: EADS-Astrium, 3 March 2011, 'Dead-time budget', GAIA.ASF.TCN.SAT.00133, issue 5, revision 1<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        DEADTIME_STRAYLIGHT_EARTHANDMOON = 0.13 # [%]

        #
         # Dead time due to straylight of bright stars and planets, in units of percents of the operational lifetime
         # <p>
         # Source: EADS-Astrium, 3 March 2011, 'Dead-time budget', GAIA.ASF.TCN.SAT.00133, issue 5, revision 1<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        DEADTIME_STRAYLIGHT_BRIGHTSTARSANDPLANETS = 0.10 # [%]

        #
         # Dead time due to charge injection, in units of percents of the operational lifetime. The number 9 in the equation is half the read (as opposed to transmitted) along-scan window size (see parameter SWS_WindowClass_1). The number 6 in the equation is half the read (as opposed to transmitted) along-scan window size (see parameter SWS_WindowClass_2). The vector elements refer to [G = 10.0 mag, G = 15.0 mag, G = 20.0 mag]
         # <p>
         # Source: EADS-Astrium, 3 March 2011, 'Dead-time budget', GAIA.ASF.TCN.SAT.00133, issue 5, revision 1<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        DEADTIME_CHARGEINJECTION = [ 0.00, 2.20, 1.60 ] # [%]

        #
         # Dead time due to CCD cosmetic defects (dead columns, bright pixels, etc.), in units of percents of the operational lifetime. The numerical values are based on the end-of-life (EoL) CCD cosmetics (2 dead colums per CCD). The vector elements refer to [G = 10.0 mag, G = 15.0 mag, G = 20.0 mag]
         # <p>
         # Source: EADS-Astrium, 3 March 2011, 'Dead-time budget', GAIA.ASF.TCN.SAT.00133, issue 5, revision 1<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        DEADTIME_COSMETICDEFECTS = [ 1.22, 1.22, 1.22 ] # [%]

        #
         # Dead time due to downlink telemetry-frame losses, in units of percents of the operational lifetime, assuming a nominal frame-loss probability (FLP = 1E-3%; see parameter :GroundSegment:Downlink_ProbabilityOfFrameLoss_Nominal). A transfer frame contains multiple star packets, as reflected in the calculation. EADS-Astrium assume a smallest star-packet size, after compression, of 1661 bits for SP1 (compare with :Satellite:PDHS:StarPacket_SizeAfterCompression_SP1Class2)
         # <p>
         # Source: EADS-Astrium, 3 March 2011, 'Dead-time budget', GAIA.ASF.TCN.SAT.00133, issue 5, revision 1<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        DEADTIME_TELEMETRYFRAMELOSSES = 0.009 # [%]

        #
         # Average rate at which stars (G <= 20.00 mag) are being processed in AF (per viewing direction/telescope; the effects of star detection and confirmation probabilities, crowding, etc., are not included)
         # <p>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        FOCALPLANE_STARPROCESSINGRATE_AVERAGE = 2502.0 # [star s^-1]

        #
         # Typical rate at which stars (G <= 20.00 mag) are being processed in AF (per viewing direction/telescope; the effects of star detection and confirmation probabilities, crowding, etc., are not included)
         # <p>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        FOCALPLANE_STARPROCESSINGRATE_TYPICAL = 14957.0 # [star s^-1]

        #
         # Design-value of the rate at which stars (G <= 20.00 mag) are being processed in AF (per viewing direction/telescope; the effects of star detection and confirmation probabilities, crowding, etc., are not included)
         # <p>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        FOCALPLANE_STARPROCESSINGRATE_DESIGN = 59826.0 # [star s^-1]

        #
         # Maximum rate at which stars (G <= 20.00 mag) are being processed in AF (per viewing direction/telescope; the effects of star detection and confirmation probabilities, crowding, etc., are not included)
         # <p>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        FOCALPLANE_STARPROCESSINGRATE_WORSTCASE = 299131.0 # [star s^-1]

        #
         # Total FoV (i.e., including dead zones between CCDs) of AF in the along-scan direction per viewing direction (telescope). Note that the WFS CCD in strip 9 and row 4 (:AF:S9:R4:) has been properly included in the calculation as reduction
         # <p>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        FOV_AL = 0.70819 # [deg]

        #
         # Total active FoV (i.e., excluding dead zones between CCDs) of AF in the along-scan direction per viewing direction (telescope). Note that the WFS CCD in strip 9 and row 4 (:AF:S9:R4:) has been properly included in the calculation as reduction
         # <p>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        FOV_AL_ACTIVE = 0.65160 # [deg]

        #
         # Total FoV (i.e., including dead zones between CCDs) of AF per viewing direction (telescope)
         # <p>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        FOV = 0.48921 # [deg^2]

        #
         # Total active FoV (i.e., excluding dead zones between CCDs) of AF per viewing direction (telescope). Note that the WFS CCD in strip 9 and row 4 (:AF:S9:R4:) has been properly included in the calculation as reduction
         # <p>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        FOV_ACTIVE = 0.44039 # [deg^2]

        #
         # Total active AF FoV (i.e., excluding dead zones between CCDs) swept out per second
         # <p>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        FOV_AREASWEPT_AL_ACTIVE = 0.01126 # [deg^2 s^-1]

        #
         # Average number of AF transits (per viewing direction/telescope) over the nominal effective operational lifetime, assuming uniform sky coverage (the effect of faint-object, astrometric-data dead time is taken into account; star detection and confirmation probabilities, crowding, etc., are not included). Note that the WFS CCD in strip 9 and row 4 (:AF:S9:R4:) has been properly included in the calculation as reduction. The vector elements refer to [G = 10.0 mag, G = 15.0 mag, G = 20.0 mag]
         # <p>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        FOV_NUMBEROFTRANSITS_AL_TOTAL = [ 38.3, 36.8, 37.0 ]

        #
         # Active transit time (i.e., excluding dead zones between CCDs), in the along-scan direction, of AF; this parameter thus equals the effective exposure time per viewing direction (telescope) per FoV transit, although any permanent TDI-gate activation is not included in the calculations. Note that the WFS CCD in strip 9 and row 4 (:AF:S9:R4:) has been properly included in the calculation as reduction
         # <p>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        FOV_TRANSITTIME_AL_ACTIVE = 39.096 # [s]

        #
         # Average effective (active) total transit time in AF (per viewing direction/telescope) over the nominal effective operational lifetime, assuming uniform sky coverage (the effects of CCD dead zones and faint-object, astrometric-data dead time are taken into account). This parameter thus equals the effective exposure time per viewing direction (telescope) integrated over the mission, although any permanent TDI-gate activation is not included in the calculations. The vector elements refer to [G = 10.0 mag, G = 15.0 mag, G = 20.0 mag]
         # <p>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        FOV_TRANSITTIME_AL_ACTIVETOTAL = [ 1498.106, 1439.131, 1445.833 ] # [s]

        #
         # Average number of stars (G <= 20.00 mag) present in the active AF FoV (per viewing direction/telescope) at each instant of time
         # <p>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        FOV_NUMBEROFSTARS_AVERAGE = 11049.0 # [star]

        #
         # Typical number of stars (G <= 20.00 mag) present in the active AF FoV (per viewing direction/telescope) at each instant of time
         # <p>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        FOV_NUMBEROFSTARS_TYPICAL = 66059.0 # [star]

        #
         # Design-value of the number of stars (G <= 20.00 mag) present in the active AF FoV (per viewing direction/telescope) at each instant of time
         # <p>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        FOV_NUMBEROFSTARS_DESIGN = 264235.0 # [star]

        #
         # Maximum number of stars (G <= 20.00 mag) present in the active AF FoV (per viewing direction/telescope) at some instant of time
         # <p>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        FOV_NUMBEROFSTARS_WORSTCASE = 1321174.0 # [star]

        #
         # Number of detected photo-electrons per arcsec^2 per s per telescope (viewing direction) for a typical sky-background surface brightness (:Nature:Sky_SurfaceBrightness_Average)
         # <p>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        SKY_NUMBEROFPHOTOELECTRONS = 21.266 # [e^- s^-1 arcsec^-2 FoV^-1]

        #
         # Requirement on the video-chain noise in units of electrons
         # <p>
         # Source: EADS-Astrium, 28 April 2008, 'PEM type-1 Requirements Specification', GAIA.ASF.SP.PLM.00027, issue 6, revision 0, Requirement PEM1-302<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        VIDEOCHAIN_DETECTIONNOISE_REQUIREMENTTOTAL = 2.338 # [e^-]

        #
         # Video-chain noise in units of electrons, taking into account that the video chain digitises the video level a certain number of times (1 for SM, 2 for AF1, 8 for AF2-9, 4 for BP, 4 for RP, 8 for RVS-LR, and 2 for RVS-HR) and averages the successive acquisitions in order to reduce noise. The video-chain noise includes ADC noise, DNL noise, analogue video noise, quantisation noise, and rounding noise. The numerical value reflects the mean measured performance of all PEM DMs tested with the FM acceptance EGSE at CRISA
         # <p>
         # Source: EADS-Astrium, 4 January 2010, 'Focal-Plane Assembly (FPA) Performance Budget', GAIA.ASF.BG.PLM.00008, issue 5, revision 0<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        VIDEOCHAIN_DETECTIONNOISE_TOTAL = 2.845 # [e^-]

        #
         # Gain of the video chain
         # <p>
         # Source: EADS-Astrium, 4 January 2010, 'Focal-Plane Assembly (FPA) Performance Budget', GAIA.ASF.BG.PLM.00008, issue 5, revision 0<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        VIDEOCHAIN_GAIN_LSBPERELECTRON = 0.25660 # [LSB per e^-]

        #
         # Useful dynamic range of the video chain, after taking the CCD register offset and margins for noise and reference-level variation into account
         # <p>
         # Source: EADS-Astrium, 4 January 2010, 'Focal-Plane Assembly (FPA) Performance Budget', GAIA.ASF.BG.PLM.00008, issue 5, revision 0. Reference document: R. Kohley, 7 April 2011, 'Gaia PEM DCDS working principle', GAIA-CH-TN-ESAC-RKO-016, issue 1, revision 0<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        VIDEOCHAIN_DYNAMICRANGE_MILLIVOLT = 1527.8 # [mV]

        #
         # Useful dynamic range of the video chain
         # <p>
         # Source: EADS-Astrium, 4 January 2010, 'Focal-Plane Assembly (FPA) Performance Budget', GAIA.ASF.BG.PLM.00008, issue 5, revision 0<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        VIDEOCHAIN_DYNAMICRANGE = 238159.0 # [e^-]

        #
         # Nominal sample offset, in units of LSB
         # <p>
         # Source: Reference document: R. Kohley, 7 April 2011, 'Gaia PEM DCDS working principle', GAIA-CH-TN-ESAC-RKO-016, issue 1, revision 0<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        VIDEOCHAIN_OFFSET_NOMINAL = 1572 # [LSB]

         class S1
            #
             # CCD total detection noise (TDN) in units of electrons (typical value). Total detection noise includes CCD readout noise (RON), CCD dark noise, KTC noise, overall video-chain noise (including ADC noise, analogue noise, and quantisation noise), and coupling and EMC-effects noise
             # <p>
             # Source: EADS-Astrium, 4 January 2010, 'Focal-Plane Assembly (FPA) Performance Budget', GAIA.ASF.BG.PLM.00008, issue 5, revision 0<br/>
             # Status: CONF<br/>
             # Basic : false<br/>
             # Scalar: true
             #
            CCD_DETECTIONNOISE_TYPICALTOTAL = 8.44 # [e^-]

            #
             # Requirement on the video-chain noise in units of electrons
             # <p>
             # Source: EADS-Astrium, 28 April 2008, 'PEM type-1 Requirements Specification', GAIA.ASF.SP.PLM.00027, issue 6, revision 0, Requirement PEM1-302<br/>
             # Status: CONF<br/>
             # Basic : false<br/>
             # Scalar: true
             #
            VIDEOCHAIN_DETECTIONNOISE_REQUIREMENTTOTAL = 5.846 # [e^-]

            #
             # Video-chain noise in units of electrons, taking into account that the video chain digitises the video level a certain number of times (1 for SM, 2 for AF1, 8 for AF2-9, 4 for BP, 4 for RP, 8 for RVS-LR, and 2 for RVS-HR) and averages the successive acquisitions in order to reduce noise. The video-chain noise includes ADC noise, DNL noise, analogue video noise, quantisation noise, and rounding noise. The numerical value reflects the mean measured performance of all PEM DMs tested with the FM acceptance EGSE at CRISA
             # <p>
             # Source: EADS-Astrium, 4 January 2010, 'Focal-Plane Assembly (FPA) Performance Budget', GAIA.ASF.BG.PLM.00008, issue 5, revision 0<br/>
             # Status: CONF<br/>
             # Basic : false<br/>
             # Scalar: true
             #
            VIDEOCHAIN_DETECTIONNOISE_TOTAL = 7.327 # [e^-]

            #
             # Useful dynamic range of the video chain, after taking the CCD register offset and margins for noise and reference-level variation into account
             # <p>
             # Source: EADS-Astrium, 4 January 2010, 'Focal-Plane Assembly (FPA) Performance Budget', GAIA.ASF.BG.PLM.00008, issue 5, revision 0. Reference document: R. Kohley, 7 April 2011, 'Gaia PEM DCDS working principle', GAIA-CH-TN-ESAC-RKO-016, issue 1, revision 0<br/>
             # Status: CONF<br/>
             # Basic : false<br/>
             # Scalar: true
             #
            VIDEOCHAIN_DYNAMICRANGE_MILLIVOLT = 1487.8 # [mV]

            #
             # Useful dynamic range of the video chain
             # <p>
             # Source: EADS-Astrium, 4 January 2010, 'Focal-Plane Assembly (FPA) Performance Budget', GAIA.ASF.BG.PLM.00008, issue 5, revision 0<br/>
             # Status: CONF<br/>
             # Basic : false<br/>
             # Scalar: true
             #
            VIDEOCHAIN_DYNAMICRANGE = 231924.0 # [e^-]

                end



        end



     class BP
        #
         # Nominal thickness of the field-free region of a blue-variant CCD, in use in BP
         # <p>
         # Source: T. Eaton, e2v Technologies, 16 June 2006, 'Gaia CCD FM phase performance assessment report', GAIA-E2V-RP-123, issue 1, Section 3.1.1.6, page 10. Reference documents: A. Short, J.H.J. de Bruijne, 26 September 2003, 'CCD QE and MTF', GAIA-AS-002, Section 4.2 and R. Kohley, 4 February 2009, 'Quantum Efficiency and Pixel Response Non-Uniformity in Gaia CCDs', GAIA-CH-TN-ESAC-RKO-003-01, issue 1, revision 0<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        CCD_THICKNESS_FIELDFREEREGION = 4.0 # [10^-6 m]

        #
         # CCD total detection noise (TDN) in units of electrons (typical value). Total detection noise includes CCD readout noise (RON), CCD dark noise, KTC noise, overall video-chain noise (including ADC noise, analogue noise, and quantisation noise), and coupling and EMC-effects noise
         # <p>
         # Source: EADS-Astrium, 4 January 2010, 'Focal-Plane Assembly (FPA) Performance Budget', GAIA.ASF.BG.PLM.00008, issue 5, revision 0<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        CCD_DETECTIONNOISE_TYPICALTOTAL = 5.18 # [e^-]

        #
         # CCD node capacitance; the factor 0.64 refers to a two-stage amplifier
         # <p>
         # Source: EADS-Astrium, 4 January 2010, 'Focal-Plane Assembly (FPA) Performance Budget', GAIA.ASF.BG.PLM.00008, issue 5, revision 0<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        CCD_NODECAPACITANCE = 16.49 # [fF]

        #
         # CCD amplifier bandwidth, calculated as 1 / (2 \pi \tau) and assuming a time constant \tau = 40 ns, as measured by e2v
         # <p>
         # Source: EADS-Astrium, 27 January 2010, 'Focal-Plane Assembly General Design Description (FPA GDD)', GAIA.ASF.TCN.PLM.00055, issue 5, revision 0, page 61<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        CCD_AMPLIFIERBANDWIDTH = 3978.9 # [kHz]

        #
         # Number of CCDs in BP
         # <p>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        CCD_NUMBER = 7

        #
         # Total number of light-sensitive pixels in (the image sections of) all BP CCDs. Any (permanent) TDI-gate activation is not included in the calculations
         # <p>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        CCD_LIGHTSENSITIVEAREA_PIXELTOTAL = 61846428 # [pixel]

        #
         # Dead time related to lost CCD transits due to windows moving - as a result of dynamic across-scan shifts introduced to mitigate serial-register charge-transfer inefficiency (serial CTI) - across the CCD edges in the across-scan direction, in units of percents of the operational lifetime. The maximum dynamic shifts are 4 AC pixels (EADS-Astrium, 4 August 2010, 'Radiation Campaign \#4 Astrium AF serial register tests report', GAIA.ASF.TCN.PLM.00585, issue 1, revision 0)
         # <p>
         # Source: EADS-Astrium, 3 March 2011, 'Dead-time budget', GAIA.ASF.TCN.SAT.00133, issue 5, revision 1<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        DEADTIME_WINDOWMOTION_DYNAMICSHIFTS = 0.20 # [%]

        #
         # Dead time due to in-orbit (re-)calibration of the instruments, in units of percents of the operational lifetime (see E. Hoeg and J.H.J. de Bruijne, 18 January 2007, 'Calibration of gates and magnitude scale', GAIA-CA-TN-NBI-EH-182-01)
         # <p>
         # Source: EADS-Astrium, 3 March 2011, 'Dead-time budget', GAIA.ASF.TCN.SAT.00133, issue 5, revision 1<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        DEADTIME_CALIBRATION = 0.82 # [%]

        #
         # Dead time due to straylight of the Earth and Moon, in units of percents of the operational lifetime
         # <p>
         # Source: EADS-Astrium, 3 March 2011, 'Dead-time budget', GAIA.ASF.TCN.SAT.00133, issue 5, revision 1<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        DEADTIME_STRAYLIGHT_EARTHANDMOON = 0.13 # [%]

        #
         # Dead time due to straylight of bright stars and planets, in units of percents of the operational lifetime
         # <p>
         # Source: EADS-Astrium, 3 March 2011, 'Dead-time budget', GAIA.ASF.TCN.SAT.00133, issue 5, revision 1<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        DEADTIME_STRAYLIGHT_BRIGHTSTARSANDPLANETS = 0.04 # [%]

        #
         # Dead time due to charge injection, in units of percents of the operational lifetime. The number 30 in the equation is half the along-scan window size (see parameter SWS_WindowClass_1). The vector elements refer to [G = 10.0 mag, G = 15.0 mag, G = 20.0 mag]
         # <p>
         # Source: EADS-Astrium, 3 March 2011, 'Dead-time budget', GAIA.ASF.TCN.SAT.00133, issue 5, revision 1<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        DEADTIME_CHARGEINJECTION = [ 0.00, 3.20, 3.20 ] # [%]

        #
         # Dead time due to CCD cosmetic defects (dead columns, bright pixels, etc.), in units of percents of the operational lifetime. The numerical values are based on the end-of-life (EoL) CCD cosmetics (2 dead colums per CCD). The vector elements refer to [G = 10.0 mag, G = 15.0 mag, G = 20.0 mag]
         # <p>
         # Source: EADS-Astrium, 3 March 2011, 'Dead-time budget', GAIA.ASF.TCN.SAT.00133, issue 5, revision 1<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        DEADTIME_COSMETICDEFECTS = [ 1.22, 1.22, 1.22 ] # [%]

        #
         # Dead time due to downlink telemetry-frame losses, in units of percents of the operational lifetime, assuming a nominal frame-loss probability (FLP = 1E-3%; see parameter :GroundSegment:Downlink_ProbabilityOfFrameLoss_Nominal). A transfer frame contains multiple star packets, as reflected in the calculation. EADS-Astrium assume a smallest star-packet size, after compression, of 1661 bits for SP1 (compare with :Satellite:PDHS:StarPacket_SizeAfterCompression_SP1Class2)
         # <p>
         # Source: EADS-Astrium, 3 March 2011, 'Dead-time budget', GAIA.ASF.TCN.SAT.00133, issue 5, revision 1<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        DEADTIME_TELEMETRYFRAMELOSSES = 0.009 # [%]

        #
         # Dead time related to a lack of serial samples at resource-allocation (selection) level caused by the simultaneous presence of bright stars (class 0), in units of percents of the operational lifetime
         # <p>
         # Source: EADS-Astrium, 3 March 2011, 'Dead-time budget', GAIA.ASF.TCN.SAT.00133, issue 5, revision 1<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        DEADTIME_SELECTION_BRIGHTSTARS = 0.21 # [%]

        #
         # Average rate at which stars (G <= 20.00 mag) are being processed in BP (per viewing direction/telescope; the effects of star detection and confirmation probabilities, crowding, etc., are not included)
         # <p>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        FOCALPLANE_STARPROCESSINGRATE_AVERAGE = 282.0 # [star s^-1]

        #
         # Typical rate at which stars (G <= 20.00 mag) are being processed in BP (per viewing direction/telescope; the effects of star detection and confirmation probabilities, crowding, etc., are not included)
         # <p>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        FOCALPLANE_STARPROCESSINGRATE_TYPICAL = 1689.0 # [star s^-1]

        #
         # Design-value of the rate at which stars (G <= 20.00 mag) are being processed in BP (per viewing direction/telescope; the effects of star detection and confirmation probabilities, crowding, etc., are not included)
         # <p>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        FOCALPLANE_STARPROCESSINGRATE_DESIGN = 6755.0 # [star s^-1]

        #
         # Maximum rate at which stars (G <= 20.00 mag) are being processed in BP (per viewing direction/telescope; the effects of star detection and confirmation probabilities, crowding, etc., are not included)
         # <p>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        FOCALPLANE_STARPROCESSINGRATE_WORSTCASE = 33773.0 # [star s^-1]

        #
         # Total FoV (i.e., including dead zones between CCDs) of BP in the along-scan direction per viewing direction (telescope)
         # <p>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        FOV_AL = 0.07357 # [deg]

        #
         # Total active FoV (i.e., excluding dead zones between CCDs) of BP in the along-scan direction per viewing direction (telescope)
         # <p>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        FOV_AL_ACTIVE = 0.07357 # [deg]

        #
         # Total FoV (i.e., including dead zones between CCDs) of BP per viewing direction (telescope)
         # <p>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        FOV = 0.05082 # [deg^2]

        #
         # Total active FoV (i.e., excluding dead zones between CCDs) of BP per viewing direction (telescope)
         # <p>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        FOV_ACTIVE = 0.04972 # [deg^2]

        #
         # Total active BP FoV (i.e., excluding dead zones between CCDs) swept out per second
         # <p>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        FOV_AREASWEPT_AL_ACTIVE = 0.01126 # [deg^2 s^-1]

        #
         # Average number of BP transits (per viewing direction/telescope) over the nominal effective operational lifetime, assuming uniform sky coverage (the effect of faint-object, photometric-data dead time is taken into account; star detection and confirmation probabilities, crowding, etc., are not included). The vector elements refer to [G = 10.0 mag, G = 15.0 mag, G = 20.0 mag]
         # <p>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        FOV_NUMBEROFTRANSITS_AL_TOTAL = [ 38.1, 36.1, 35.9 ]

        #
         # Active transit time (i.e., excluding dead zones between CCDs), in the along-scan direction, of BP; this parameter thus equals the effective exposure time per FoV transit, although any permanent TDI-gate activation is not included in the calculations
         # <p>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        FOV_TRANSITTIME_AL_ACTIVE = 4.414 # [s]

        #
         # Average effective (active) total transit time in BP over the nominal effective operational lifetime, assuming uniform sky coverage (the effects of CCD dead zones and faint-object, photometric-data dead time are taken into account). This parameter thus equals the effective exposure time per viewing direction (telescope) integrated over the mission, although any permanent TDI-gate activation is not included in the calculations. The vector elements refer to [G = 10.0 mag, G = 15.0 mag, G = 20.0 mag]
         # <p>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        FOV_TRANSITTIME_AL_ACTIVETOTAL = [ 168.087, 159.466, 158.276 ] # [s]

        #
         # Average number of stars (G <= 20.00 mag) present in the active BP FoV (per viewing direction/telescope) at each instant of time
         # <p>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        FOV_NUMBEROFSTARS_AVERAGE = 1247.0 # [star]

        #
         # Typical number of stars (G <= 20.00 mag) present in the active BP FoV (per viewing direction/telescope) at each instant of time
         # <p>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        FOV_NUMBEROFSTARS_TYPICAL = 7458.0 # [star]

        #
         # Design-value of the number of stars (G <= 20.00 mag) present in the active BP FoV (per viewing direction/telescope) at each instant of time
         # <p>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        FOV_NUMBEROFSTARS_DESIGN = 29833.0 # [star]

        #
         # Maximum number of stars (G <= 20.00 mag) present in the active BP FoV (per viewing direction/telescope) at some instant of time
         # <p>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        FOV_NUMBEROFSTARS_WORSTCASE = 149165.0 # [star]

        #
         # Effective, worst-case, beginning-of-life reflectivity/transmissivity attenuation of the BP field of view (averaged over the two viewing directions) caused by particulate and molecular contamination of all optics and detectors, conservatively ignoring the in-obit de-contamination / payload out-gassing phase
         # <p>
         # Source: EADS-Astrium, 25 February 2011, 'Science Performance Budget Report', GAIA.ASF.RP.SAT.00005, issue 5, revision 0, based on EADS-Astrium, 30 November 2011, 'Gaia payload contamination analysis', GAIA.ASF.TCN.PLM.00036, issue 4, revision 0<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        OPTICS_ATTENUATION_PARTICULATEANDMOLECULARCONTAMINATION = 10.23 # [%]

        #
         # For a wavelength \lambda [nm], the effective reflectivity/transmissivity attenuation linked to scattered light caused by surface rugosity equals \exp[-4.6 * (2 \pi / \lambda [nm])^2 * (SUM)], where SUM = SUM_{\rm optical surfaces} (\Delta n * rugosity [nm])^2, with rugosity the surface rugosity of the optical surface and \Delta n the difference between the refractive index before and after the optical surface, i.e., \Delta n = 2.0 for reflection on a mirror and \Delta n = 0.5 for transmission through glass/vacuum diopters. This parameter defines the effective rugosity of the BP instrument (including the telescope), i.e., SQRT(SUM). The surface rugosity equals 2 nm RMS for the M1 mirror and 1 nm RMS for all other surfaces (M2-M6 mirrors, BP/RP prism faces, RVS OMA prism faces, RVS grating faces, and RVS filter-plate faces)
         # <p>
         # Source: EADS-Astrium, 25 February 2011, 'Science Performance Budget Report', GAIA.ASF.RP.SAT.00005, issue 5, revision 0<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        OPTICS_RUGOSITY_EFFECTIVE = 6.04 # [nm]

        #
         # Number of detected photo-electrons per arcsec^2 per s per telescope (viewing direction) for a typical sky-background surface brightness (:Nature:Sky_SurfaceBrightness_Average)
         # <p>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        SKY_NUMBEROFPHOTOELECTRONS = 11.487 # [e^- s^-1 arcsec^-2 FoV^-1]

        #
         # Requirement on the video-chain noise in units of electrons
         # <p>
         # Source: EADS-Astrium, 28 April 2008, 'PEM type-1 Requirements Specification', GAIA.ASF.SP.PLM.00027, issue 6, revision 0, Requirement PEM1-302<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        VIDEOCHAIN_DETECTIONNOISE_REQUIREMENTTOTAL = 4.824 # [e^-]

        #
         # Video-chain noise in units of electrons, taking into account that the video chain digitises the video level a certain number of times (1 for SM, 2 for AF1, 8 for AF2-9, 4 for BP, 4 for RP, 8 for RVS-LR, and 2 for RVS-HR) and averages the successive acquisitions in order to reduce noise. The video-chain noise includes ADC noise, DNL noise, analogue video noise, quantisation noise, and rounding noise. The numerical value reflects the mean measured performance of all PEM DMs tested with the FM acceptance EGSE at CRISA
         # <p>
         # Source: X. Moisson (EADS-Astrium), priv. comm., 18 October 2010. Reference document: EADS-Astrium, 4 January 2010, 'Focal-Plane Assembly (FPA) Performance Budget', GAIA.ASF.BG.PLM.00008, issue 5, revision 0<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        VIDEOCHAIN_DETECTIONNOISE_TOTAL = 4.020 # [e^-]

        #
         # Gain of the video chain
         # <p>
         # Source: EADS-Astrium, 4 January 2010, 'Focal-Plane Assembly (FPA) Performance Budget', GAIA.ASF.BG.PLM.00008, issue 5, revision 0<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        VIDEOCHAIN_GAIN_LSBPERELECTRON = 0.24876 # [LSB per e^-]

        #
         # Useful dynamic range of the video chain, after taking the CCD register offset and margins for noise and reference-level variation into account
         # <p>
         # Source: EADS-Astrium, 4 January 2010, 'Focal-Plane Assembly (FPA) Performance Budget', GAIA.ASF.BG.PLM.00008, issue 5, revision 0. Reference document: R. Kohley, 7 April 2011, 'Gaia PEM DCDS working principle', GAIA-CH-TN-ESAC-RKO-016, issue 1, revision 0<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        VIDEOCHAIN_DYNAMICRANGE_MILLIVOLT = 1548.1 # [mV]

        #
         # Useful dynamic range of the video chain
         # <p>
         # Source: EADS-Astrium, 4 January 2010, 'Focal-Plane Assembly (FPA) Performance Budget', GAIA.ASF.BG.PLM.00008, issue 5, revision 0<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        VIDEOCHAIN_DYNAMICRANGE = 248931.0 # [e^-]

        #
         # Nominal sample offset, in units of LSB
         # <p>
         # Source: Reference document: R. Kohley, 7 April 2011, 'Gaia PEM DCDS working principle', GAIA-CH-TN-ESAC-RKO-016, issue 1, revision 0<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        VIDEOCHAIN_OFFSET_NOMINAL = 1562 # [LSB]

        #
         # Length of the BP wavelength range (interval)
         # <p>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        WAVELENGTHRANGE_LENGTH = 350.0 # [nm]

        end



     class RP
        #
         # Nominal thickness of the field-free region of a red-variant CCD, in use in RP
         # <p>
         # Source: T. Eaton, e2v Technologies, 16 June 2006, 'Gaia CCD FM phase performance assessment report', GAIA-E2V-RP-123, issue 1, Section 3.1.1.7, page 12. Reference documents: A. Short, J.H.J. de Bruijne, 26 September 2003, 'CCD QE and MTF', GAIA-AS-002, Section 4.2 and R. Kohley, 4 February 2009, 'Quantum Efficiency and Pixel Response Non-Uniformity in Gaia CCDs', GAIA-CH-TN-ESAC-RKO-003-01, issue 1, revision 0<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        CCD_THICKNESS_FIELDFREEREGION = 2.0 # [10^-6 m]

        #
         # CCD total detection noise (TDN) in units of electrons (typical value). Total detection noise includes CCD readout noise (RON), CCD dark noise, KTC noise, overall video-chain noise (including ADC noise, analogue noise, and quantisation noise), and coupling and EMC-effects noise
         # <p>
         # Source: EADS-Astrium, 4 January 2010, 'Focal-Plane Assembly (FPA) Performance Budget', GAIA.ASF.BG.PLM.00008, issue 5, revision 0<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        CCD_DETECTIONNOISE_TYPICALTOTAL = 4.93 # [e^-]

        #
         # CCD node capacitance; the factor 0.64 refers to a two-stage amplifier
         # <p>
         # Source: EADS-Astrium, 4 January 2010, 'Focal-Plane Assembly (FPA) Performance Budget', GAIA.ASF.BG.PLM.00008, issue 5, revision 0<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        CCD_NODECAPACITANCE = 15.07 # [fF]

        #
         # CCD amplifier bandwidth, calculated as 1 / (2 \pi \tau) and assuming a time constant \tau = 40 ns, as measured by e2v
         # <p>
         # Source: EADS-Astrium, 27 January 2010, 'Focal-Plane Assembly General Design Description (FPA GDD)', GAIA.ASF.TCN.PLM.00055, issue 5, revision 0, page 61<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        CCD_AMPLIFIERBANDWIDTH = 3978.9 # [kHz]

        #
         # Number of CCDs in RP
         # <p>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        CCD_NUMBER = 7

        #
         # Total number of light-sensitive pixels in (the image sections of) all RP CCDs. Any (permanent) TDI-gate activation is not included in the calculations
         # <p>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        CCD_LIGHTSENSITIVEAREA_PIXELTOTAL = 61846428 # [pixel]

        #
         # Dead time related to lost CCD transits due to windows moving - as a result of dynamic across-scan shifts introduced to mitigate serial-register charge-transfer inefficiency (serial CTI) - across the CCD edges in the across-scan direction, in units of percents of the operational lifetime. The maximum dynamic shifts are 4 AC pixels (EADS-Astrium, 4 August 2010, 'Radiation Campaign \#4 Astrium AF serial register tests report', GAIA.ASF.TCN.PLM.00585, issue 1, revision 0)
         # <p>
         # Source: EADS-Astrium, 3 March 2011, 'Dead-time budget', GAIA.ASF.TCN.SAT.00133, issue 5, revision 1<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        DEADTIME_WINDOWMOTION_DYNAMICSHIFTS = 0.20 # [%]

        #
         # Dead time due to in-orbit (re-)calibration of the instruments, in units of percents of the operational lifetime (see E. Hoeg and J.H.J. de Bruijne, 18 January 2007, 'Calibration of gates and magnitude scale', GAIA-CA-TN-NBI-EH-182-01)
         # <p>
         # Source: EADS-Astrium, 3 March 2011, 'Dead-time budget', GAIA.ASF.TCN.SAT.00133, issue 5, revision 1<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        DEADTIME_CALIBRATION = 0.82 # [%]

        #
         # Dead time due to straylight of the Earth and Moon, in units of percents of the operational lifetime
         # <p>
         # Source: EADS-Astrium, 3 March 2011, 'Dead-time budget', GAIA.ASF.TCN.SAT.00133, issue 5, revision 1<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        DEADTIME_STRAYLIGHT_EARTHANDMOON = 0.13 # [%]

        #
         # Dead time due to straylight of bright stars and planets, in units of percents of the operational lifetime
         # <p>
         # Source: EADS-Astrium, 3 March 2011, 'Dead-time budget', GAIA.ASF.TCN.SAT.00133, issue 5, revision 1<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        DEADTIME_STRAYLIGHT_BRIGHTSTARSANDPLANETS = 0.04 # [%]

        #
         # Dead time due to charge injection, in units of percents of the operational lifetime. The number 30 in the equation is half the along-scan window size (see parameter SWS_WindowClass_1). The vector elements refer to [G = 10.0 mag, G = 15.0 mag, G = 20.0 mag]
         # <p>
         # Source: EADS-Astrium, 3 March 2011, 'Dead-time budget', GAIA.ASF.TCN.SAT.00133, issue 5, revision 1<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        DEADTIME_CHARGEINJECTION = [ 0.00, 3.20, 3.20 ] # [%]

        #
         # Dead time due to CCD cosmetic defects (dead columns, bright pixels, etc.), in units of percents of the operational lifetime. The numerical values are based on the beginning-of-life (BoL) CCD cosmetics (3 dead colums per CCD). The vector elements refer to [G = 10.0 mag, G = 15.0 mag, G = 20.0 mag]. The estimates remain to be updated for end-of-life (EoL) values of dead columns/pixels
         # <p>
         # Source: EADS-Astrium, 3 March 2011, 'Dead-time budget', GAIA.ASF.TCN.SAT.00133, issue 5, revision 1<br/>
         # Status: TBC<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        DEADTIME_COSMETICDEFECTS = [ 1.83, 1.83, 1.83 ] # [%]

        #
         # Dead time due to downlink telemetry-frame losses, in units of percents of the operational lifetime, assuming a nominal frame-loss probability (FLP = 1E-3%; see parameter :GroundSegment:Downlink_ProbabilityOfFrameLoss_Nominal). A transfer frame contains multiple star packets, as reflected in the calculation. EADS-Astrium assume a smallest star-packet size, after compression, of 1661 bits for SP1 (compare with :Satellite:PDHS:StarPacket_SizeAfterCompression_SP1Class2)
         # <p>
         # Source: EADS-Astrium, 3 March 2011, 'Dead-time budget', GAIA.ASF.TCN.SAT.00133, issue 5, revision 1<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        DEADTIME_TELEMETRYFRAMELOSSES = 0.009 # [%]

        #
         # Dead time related to a lack of serial samples at resource-allocation (selection) level caused by the simultaneous presence of bright stars (class 0), in units of percents of the operational lifetime
         # <p>
         # Source: EADS-Astrium, 3 March 2011, 'Dead-time budget', GAIA.ASF.TCN.SAT.00133, issue 5, revision 1<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        DEADTIME_SELECTION_BRIGHTSTARS = 0.21 # [%]

        #
         # Average rate at which stars (G <= 20.00 mag) are being processed in RP (per viewing direction/telescope; the effects of star detection and confirmation probabilities, crowding, etc., are not included)
         # <p>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        FOCALPLANE_STARPROCESSINGRATE_AVERAGE = 282.0 # [star s^-1]

        #
         # Typical rate at which stars (G <= 20.00 mag) are being processed in RP (per viewing direction/telescope; the effects of star detection and confirmation probabilities, crowding, etc., are not included)
         # <p>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        FOCALPLANE_STARPROCESSINGRATE_TYPICAL = 1689.0 # [star s^-1]

        #
         # Design-value of the rate at which stars (G <= 20.00 mag) are being processed in RP (per viewing direction/telescope; the effects of star detection and confirmation probabilities, crowding, etc., are not included)
         # <p>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        FOCALPLANE_STARPROCESSINGRATE_DESIGN = 6755.0 # [star s^-1]

        #
         # Maximum rate at which stars (G <= 20.00 mag) are being processed in RP (per viewing direction/telescope; the effects of star detection and confirmation probabilities, crowding, etc., are not included)
         # <p>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        FOCALPLANE_STARPROCESSINGRATE_WORSTCASE = 33773.0 # [star s^-1]

        #
         # Total FoV (i.e., including dead zones between CCDs) of RP in the along-scan direction per viewing direction (telescope)
         # <p>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        FOV_AL = 0.07357 # [deg]

        #
         # Total active FoV (i.e., excluding dead zones between CCDs) of RP in the along-scan direction per viewing direction (telescope)
         # <p>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        FOV_AL_ACTIVE = 0.07357 # [deg]

        #
         # Total FoV (i.e., including dead zones between CCDs) of RP per viewing direction (telescope)
         # <p>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        FOV = 0.05082 # [deg^2]

        #
         # Total active FoV (i.e., excluding dead zones between CCDs) of RP per viewing direction (telescope)
         # <p>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        FOV_ACTIVE = 0.04972 # [deg^2]

        #
         # Total active RP FoV (i.e., excluding dead zones between CCDs) swept out per second
         # <p>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        FOV_AREASWEPT_AL_ACTIVE = 0.01126 # [deg^2 s^-1]

        #
         # Average number of RP transits (per viewing direction/telescope) over the nominal effective operational lifetime, assuming uniform sky coverage (the effect of faint-object, photometric-data dead time is taken into account; star detection and confirmation probabilities, crowding, etc., are not included). The vector elements refer to [G = 10.0 mag, G = 15.0 mag, G = 20.0 mag]
         # <p>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        FOV_NUMBEROFTRANSITS_AL_TOTAL = [ 36.5, 34.6, 34.3 ]

        #
         # Active transit time (i.e., excluding dead zones between CCDs), in the along-scan direction, of RP; this parameter thus equals the effective exposure time per FoV transit, although any permanent TDI-gate activation is not included in the calculations
         # <p>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        FOV_TRANSITTIME_AL_ACTIVE = 4.414 # [s]

        #
         # Average effective (active) total transit time in RP over the nominal effective operational lifetime, assuming uniform sky coverage (the effects of CCD dead zones and faint-object, photometric-data dead time are taken into account). This parameter thus equals the effective exposure time per viewing direction (telescope) integrated over the mission, although any permanent TDI-gate activation is not included in the calculations. The vector elements refer to [G = 10.0 mag, G = 15.0 mag, G = 20.0 mag]
         # <p>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        FOV_TRANSITTIME_AL_ACTIVETOTAL = [ 160.923, 152.531, 151.392 ] # [s]

        #
         # Average number of stars (G <= 20.00 mag) present in the active RP FoV (per viewing direction/telescope) at each instant of time
         # <p>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        FOV_NUMBEROFSTARS_AVERAGE = 1247.0 # [star]

        #
         # Typical number of stars (G <= 20.00 mag) present in the active RP FoV (per viewing direction/telescope) at each instant of time
         # <p>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        FOV_NUMBEROFSTARS_TYPICAL = 7458.0 # [star]

        #
         # Design-value of the number of stars (G <= 20.00 mag) present in the active RP FoV (per viewing direction/telescope) at each instant of time
         # <p>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        FOV_NUMBEROFSTARS_DESIGN = 29833.0 # [star]

        #
         # Maximum number of stars (G <= 20.00 mag) present in the active RP FoV (per viewing direction/telescope) at some instant of time
         # <p>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        FOV_NUMBEROFSTARS_WORSTCASE = 149165.0 # [star]

        #
         # Effective, worst-case, beginning-of-life reflectivity/transmissivity attenuation of the RP field of view (averaged over the two viewing directions) caused by particulate and molecular contamination of all optics and detectors, conservatively ignoring the in-obit de-contamination / payload out-gassing phase
         # <p>
         # Source: EADS-Astrium, 25 February 2011, 'Science Performance Budget Report', GAIA.ASF.RP.SAT.00005, issue 5, revision 0, based on EADS-Astrium, 30 November 2011, 'Gaia payload contamination analysis', GAIA.ASF.TCN.PLM.00036, issue 4, revision 0<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        OPTICS_ATTENUATION_PARTICULATEANDMOLECULARCONTAMINATION = 10.23 # [%]

        #
         # For a wavelength \lambda [nm], the effective reflectivity/transmissivity attenuation linked to scattered light caused by surface rugosity equals \exp[-4.6 * (2 \pi / \lambda [nm])^2 * (SUM)], where SUM = SUM_{\rm optical surfaces} (\Delta n * rugosity [nm])^2, with rugosity the surface rugosity of the optical surface and \Delta n the difference between the refractive index before and after the optical surface, i.e., \Delta n = 2.0 for reflection on a mirror and \Delta n = 0.5 for transmission through glass/vacuum diopters. This parameter defines the effective rugosity of the RP instrument (including the telescope), i.e., SQRT(SUM). The surface rugosity equals 2 nm RMS for the M1 mirror and 1 nm RMS for all other surfaces (M2-M6 mirrors, BP/RP prism faces, RVS OMA prism faces, RVS grating faces, and RVS filter-plate faces)
         # <p>
         # Source: EADS-Astrium, 25 February 2011, 'Science Performance Budget Report', GAIA.ASF.RP.SAT.00005, issue 5, revision 0<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        OPTICS_RUGOSITY_EFFECTIVE = 6.04 # [nm]

        #
         # Number of detected photo-electrons per arcsec^2 per s per telescope (viewing direction) for a typical sky-background surface brightness (:Nature:Sky_SurfaceBrightness_Average)
         # <p>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        SKY_NUMBEROFPHOTOELECTRONS = 12.009 # [e^- s^-1 arcsec^-2 FoV^-1]

        #
         # Requirement on the video-chain noise in units of electrons
         # <p>
         # Source: EADS-Astrium, 28 April 2008, 'PEM type-1 Requirements Specification', GAIA.ASF.SP.PLM.00027, issue 6, revision 0, Requirement PEM1-302<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        VIDEOCHAIN_DETECTIONNOISE_REQUIREMENTTOTAL = 4.408 # [e^-]

        #
         # Video-chain noise in units of electrons, taking into account that the video chain digitises the video level a certain number of times (1 for SM, 2 for AF1, 8 for AF2-9, 4 for BP, 4 for RP, 8 for RVS-LR, and 2 for RVS-HR) and averages the successive acquisitions in order to reduce noise. The video-chain noise includes ADC noise, DNL noise, analogue video noise, quantisation noise, and rounding noise. The numerical value reflects the mean measured performance of all PEM DMs tested with the FM acceptance EGSE at CRISA
         # <p>
         # Source: X. Moisson (EADS-Astrium), priv. comm., 18 October 2010. Reference document: EADS-Astrium, 4 January 2010, 'Focal-Plane Assembly (FPA) Performance Budget', GAIA.ASF.BG.PLM.00008, issue 5, revision 0<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        VIDEOCHAIN_DETECTIONNOISE_TOTAL = 3.674 # [e^-]

        #
         # Gain of the video chain
         # <p>
         # Source: EADS-Astrium, 4 January 2010, 'Focal-Plane Assembly (FPA) Performance Budget', GAIA.ASF.BG.PLM.00008, issue 5, revision 0<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        VIDEOCHAIN_GAIN_LSBPERELECTRON = 0.27222 # [LSB per e^-]

        #
         # Useful dynamic range of the video chain, after taking the CCD register offset and margins for noise and reference-level variation into account
         # <p>
         # Source: EADS-Astrium, 4 January 2010, 'Focal-Plane Assembly (FPA) Performance Budget', GAIA.ASF.BG.PLM.00008, issue 5, revision 0. Reference document: R. Kohley, 7 April 2011, 'Gaia PEM DCDS working principle', GAIA-CH-TN-ESAC-RKO-016, issue 1, revision 0<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        VIDEOCHAIN_DYNAMICRANGE_MILLIVOLT = 1522.6 # [mV]

        #
         # Useful dynamic range of the video chain
         # <p>
         # Source: EADS-Astrium, 4 January 2010, 'Focal-Plane Assembly (FPA) Performance Budget', GAIA.ASF.BG.PLM.00008, issue 5, revision 0<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        VIDEOCHAIN_DYNAMICRANGE = 223735.0 # [e^-]

        #
         # Nominal sample offset, in units of LSB
         # <p>
         # Source: Reference document: R. Kohley, 7 April 2011, 'Gaia PEM DCDS working principle', GAIA-CH-TN-ESAC-RKO-016, issue 1, revision 0<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        VIDEOCHAIN_OFFSET_NOMINAL = 2580 # [LSB]

        #
         # Length of the RP wavelength range (interval)
         # <p>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        WAVELENGTHRANGE_LENGTH = 410.0 # [nm]

        end



     class RVS
        #
         # CCD-line duration for the RVS-LR mode (taking along-scan (parallel) hardware binning into account), also known as the period of the parallel transfer-gate clock
         # <p>
         # Source: EADS-Astrium, 4 January 2010, 'Focal-Plane Assembly (FPA) Performance Budget', GAIA.ASF.BG.PLM.00008, issue 5, revision 0<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        CCD_LINEDURATION_LR = 2.948400 # [ms]

        #
         # CCD-line duration for the RVS-HR mode, also known as the period of the parallel transfer-gate clock
         # <p>
         # Source: EADS-Astrium, 4 January 2010, 'Focal-Plane Assembly (FPA) Performance Budget', GAIA.ASF.BG.PLM.00008, issue 5, revision 0<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        CCD_LINEDURATION_HR = 0.982800 # [ms]

        #
         # Nominal thickness of the field-free region of a red-variant CCD, in use in RVS
         # <p>
         # Source: T. Eaton, e2v Technologies, 16 June 2006, 'Gaia CCD FM phase performance assessment report', GAIA-E2V-RP-123, issue 1, Section 3.1.1.7, page 12. Reference documents: A. Short, J.H.J. de Bruijne, 26 September 2003, 'CCD QE and MTF', GAIA-AS-002, Section 4.2 and R. Kohley, 4 February 2009, 'Quantum Efficiency and Pixel Response Non-Uniformity in Gaia CCDs', GAIA-CH-TN-ESAC-RKO-003-01, issue 1, revision 0<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        CCD_THICKNESS_FIELDFREEREGION = 2.0 # [10^-6 m]

        #
         # CCD dark noise in units of electrons for a sample of 3 AL and 10 AC pixels
         # <p>
         # Source: EADS-Astrium, 4 January 2010, 'Focal-Plane Assembly (FPA) Performance Budget', GAIA.ASF.BG.PLM.00008, issue 5, revision 0<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        CCD_DETECTIONNOISE_DARKNOISELR = 0.191 # [e^-]

        #
         # CCD dark noise in units of electrons for a sample of 1 AL and 1 AC pixels
         # <p>
         # Source: EADS-Astrium, 4 January 2010, 'Focal-Plane Assembly (FPA) Performance Budget', GAIA.ASF.BG.PLM.00008, issue 5, revision 0<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        CCD_DETECTIONNOISE_DARKNOISEHR = 0.035 # [e^-]

        #
         # CCD total detection noise (TDN) in units of electrons (typical value). Total detection noise includes CCD readout noise (RON), CCD dark noise, KTC noise, overall video-chain noise (including ADC noise, analogue noise, and quantisation noise), and coupling and EMC-effects noise
         # <p>
         # Source: EADS-Astrium, 4 January 2010, 'Focal-Plane Assembly (FPA) Performance Budget', GAIA.ASF.BG.PLM.00008, issue 5, revision 0<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        CCD_DETECTIONNOISE_TYPICALTOTALLR = 3.78 # [e^-]

        #
         # CCD total detection noise (TDN) in units of electrons (typical value). Total detection noise includes CCD readout noise (RON), CCD dark noise, KTC noise, overall video-chain noise (including ADC noise, analogue noise, and quantisation noise), and coupling and EMC-effects noise
         # <p>
         # Source: EADS-Astrium, 4 January 2010, 'Focal-Plane Assembly (FPA) Performance Budget', GAIA.ASF.BG.PLM.00008, issue 5, revision 0<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        CCD_DETECTIONNOISE_TYPICALTOTALHR = 3.52 # [e^-]

        #
         # CCD node capacitance; the factor 0.64 refers to a two-stage amplifier
         # <p>
         # Source: EADS-Astrium, 4 January 2010, 'Focal-Plane Assembly (FPA) Performance Budget', GAIA.ASF.BG.PLM.00008, issue 5, revision 0<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        CCD_NODECAPACITANCE = 15.07 # [fF]

        #
         # CCD amplifier bandwidth, calculated as 1 / (2 \pi \tau) and assuming a time constant \tau = 40 ns, as measured by e2v
         # <p>
         # Source: EADS-Astrium, 27 January 2010, 'Focal-Plane Assembly General Design Description (FPA GDD)', GAIA.ASF.TCN.PLM.00055, issue 5, revision 0, page 61<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        CCD_AMPLIFIERBANDWIDTH = 3978.9 # [kHz]

        #
         # Number of CCDs in RVS
         # <p>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        CCD_NUMBER = 12

        #
         # Total number of light-sensitive pixels in (the image sections of) all RVS CCDs. Any (permanent) TDI-gate activation is not included in the calculations
         # <p>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        CCD_LIGHTSENSITIVEAREA_PIXELTOTAL = 106022448 # [pixel]

        #
         # Dead time related to lost CCD transits due to windows moving - as a result of dynamic across-scan shifts introduced to mitigate serial-register charge-transfer inefficiency (serial CTI) - across the CCD edges in the across-scan direction, in units of percents of the operational lifetime. The maximum dynamic shifts are 4 AC pixels (EADS-Astrium, 4 August 2010, 'Radiation Campaign \#4 Astrium AF serial register tests report', GAIA.ASF.TCN.PLM.00585, issue 1, revision 0)
         # <p>
         # Source: EADS-Astrium, 3 March 2011, 'Dead-time budget', GAIA.ASF.TCN.SAT.00133, issue 5, revision 1<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        DEADTIME_WINDOWMOTION_DYNAMICSHIFTS = 0.20 # [%]

        #
         # Dead time due to in-orbit (re-)calibration of the instruments, in units of percents of the operational lifetime (see E. Hoeg and J.H.J. de Bruijne, 18 January 2007, 'Calibration of gates and magnitude scale', GAIA-CA-TN-NBI-EH-182-01)
         # <p>
         # Source: EADS-Astrium, 3 March 2011, 'Dead-time budget', GAIA.ASF.TCN.SAT.00133, issue 5, revision 1<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        DEADTIME_CALIBRATION = 0.82 # [%]

        #
         # Dead time due to straylight of the Earth and Moon, in units of percents of the operational lifetime
         # <p>
         # Source: EADS-Astrium, 3 March 2011, 'Dead-time budget', GAIA.ASF.TCN.SAT.00133, issue 5, revision 1<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        DEADTIME_STRAYLIGHT_EARTHANDMOON = 0.13 # [%]

        #
         # Dead time due to straylight of bright stars and planets, in units of percents of the operational lifetime
         # <p>
         # Source: EADS-Astrium, 3 March 2011, 'Dead-time budget', GAIA.ASF.TCN.SAT.00133, issue 5, revision 1<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        DEADTIME_STRAYLIGHT_BRIGHTSTARSANDPLANETS = 0.06 # [%]

        #
         # Dead time due to charge injection, in units of percents of the operational lifetime, set to 0 since charge injection is not baseline in RVS. The vector elements refer to [G_RVS = 10.0 mag, G_RVS = 15.0 mag, G_RVS = 16.5 mag]
         # <p>
         # Source: EADS-Astrium, 3 March 2011, 'Dead-time budget', GAIA.ASF.TCN.SAT.00133, issue 5, revision 1<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        DEADTIME_CHARGEINJECTION = [ 0.00, 0.00, 0.00 ] # [%]

        #
         # Dead time due to CCD cosmetic defects (dead columns, bright pixels, etc.), in units of percents of the operational lifetime. The numerical values are based on the beginning-of-life (BoL) CCD cosmetics (3 dead colums per CCD). The vector elements refer to [G_RVS = 10.0 mag, G_RVS = 15.0 mag, G_RVS = 16.5 mag]. The estimates remain to be updated for end-of-life (EoL) values of dead columns/pixels
         # <p>
         # Source: EADS-Astrium, 3 March 2011, 'Dead-time budget', GAIA.ASF.TCN.SAT.00133, issue 5, revision 1<br/>
         # Status: TBC<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        DEADTIME_COSMETICDEFECTS = [ 1.53, 1.53, 1.53 ] # [%]

        #
         # Dead time due to downlink telemetry-frame losses, in units of percents of the operational lifetime, assuming a nominal frame-loss probability (FLP = 1E-3%; see parameter :GroundSegment:Downlink_ProbabilityOfFrameLoss_Nominal). A transfer frame contains multiple star packets, as reflected in the calculation. EADS-Astrium assume a smallest star-packet size, after compression, of 7210 bits for SP2 (compare with :Satellite:PDHS:StarPacket_SizeAfterCompression_SP2Class2)
         # <p>
         # Source: EADS-Astrium, 3 March 2011, 'Dead-time budget', GAIA.ASF.TCN.SAT.00133, issue 5, revision 1<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        DEADTIME_TELEMETRYFRAMELOSSES = 0.002 # [%]

        #
         # Dead time related to a lack of serial samples at resource-allocation (selection) level caused by the simultaneous presence of bright stars (class 0), in units of percents of the operational lifetime
         # <p>
         # Source: EADS-Astrium, 3 March 2011, 'Dead-time budget', GAIA.ASF.TCN.SAT.00133, issue 5, revision 1<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        DEADTIME_SELECTION_BRIGHTSTARS = 0.21 # [%]

        #
         # Average rate at which stars (G_RVS (= C1M861 = RVF) <= 17.00 mag) transit the RVS part of the focal plane ('average star flow per viewing direction/telescope'). Caution: the brighter star-selection limiting magnitude of RVS compared to SM/AF/BP/RP (G_RVS = 17.00 mag versus G = 20.00 mag, respectively; see parameters Selection_Magnitude_Maximum) is assumed to correspond to a factor :Nature:Sky_StarDensity_RVSReductionFactor reduction in the number of stars
         # <p>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        FOCALPLANE_STARFLOWRATE_AL_AVERAGE = 47.0 # [star s^-1]

        #
         # Typical rate at which stars (G_RVS (= C1M861 = RVF) <= 17.00 mag) transit the RVS part of the focal plane ('typical star flow per viewing direction/telescope'). Caution: the brighter star-selection limiting magnitude of RVS compared to SM/AF/BP/RP (G_RVS = 17.00 mag versus G = 20.00 mag, respectively; see parameters Selection_Magnitude_Maximum) is assumed to correspond to a factor :Nature:Sky_StarDensity_RVSReductionFactor reduction in the number of stars
         # <p>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        FOCALPLANE_STARFLOWRATE_AL_TYPICAL = 281.0 # [star s^-1]

        #
         # Design-value of the rate at which stars (G_RVS (= C1M861 = RVF) <= 17.00 mag) transit the RVS part of the focal plane ('design-value of the star flow per viewing direction/telescope'). Caution: the brighter star-selection limiting magnitude of RVS compared to SM/AF/BP/RP (G_RVS = 17.00 mag versus G = 20.00 mag, respectively; see parameters Selection_Magnitude_Maximum) is assumed to correspond to a factor :Nature:Sky_StarDensity_RVSReductionFactor reduction in the number of stars
         # <p>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        FOCALPLANE_STARFLOWRATE_AL_DESIGN = 1123.0 # [star s^-1]

        #
         # Maximum rate at which stars (G_RVS (= C1M861 = RVF) <= 17.00 mag) transit the RVS part of the focal plane ('maximum star flow per viewing direction/telescope'). Caution: the brighter star-selection limiting magnitude of RVS compared to SM/AF/BP/RP (G_RVS = 17.00 mag versus G = 20.00 mag, respectively; see parameters Selection_Magnitude_Maximum) is assumed to correspond to a factor :Nature:Sky_StarDensity_RVSReductionFactor reduction in the number of stars
         # <p>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        FOCALPLANE_STARFLOWRATE_AL_WORSTCASE = 5616.0 # [star s^-1]

        #
         # Average rate at which stars (G_RVS (= C1M861 = RVF) <= 17.00 mag) are being processed in RVS (per viewing direction/telescope; the effects of star detection and confirmation probabilities, crowding, etc., are not included). Caution: the brighter star-selection limiting magnitude of RVS compared to SM/AF/BP/RP (G_RVS = 17.00 mag versus G = 20.00 mag, respectively; see parameters Selection_Magnitude_Maximum) is assumed to correspond to a factor :Nature:Sky_StarDensity_RVSReductionFactor reduction in the number of stars
         # <p>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        FOCALPLANE_STARPROCESSINGRATE_AVERAGE = 80.0 # [star s^-1]

        #
         # Typical rate at which stars (G_RVS (= C1M861 = RVF) <= 17.00 mag) are being processed in RVS (per viewing direction/telescope; the effects of star detection and confirmation probabilities, crowding, etc., are not included). Caution: the brighter star-selection limiting magnitude of RVS compared to SM/AF/BP/RP (G_RVS = 17.00 mag versus G = 20.00 mag, respectively; see parameters Selection_Magnitude_Maximum) is assumed to correspond to a factor :Nature:Sky_StarDensity_RVSReductionFactor reduction in the number of stars
         # <p>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        FOCALPLANE_STARPROCESSINGRATE_TYPICAL = 481.0 # [star s^-1]

        #
         # Design-value of the rate at which stars (G_RVS (= C1M861 = RVF) <= 17.00 mag) are being processed in RVS (per viewing direction/telescope; the effects of star detection and confirmation probabilities, crowding, etc., are not included). Caution: the brighter star-selection limiting magnitude of RVS compared to SM/AF/BP/RP (G_RVS = 17.00 mag versus G = 20.00 mag, respectively; see parameters Selection_Magnitude_Maximum) is assumed to correspond to a factor :Nature:Sky_StarDensity_RVSReductionFactor reduction in the number of stars
         # <p>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        FOCALPLANE_STARPROCESSINGRATE_DESIGN = 1924.0 # [star s^-1]

        #
         # Maximum rate at which stars (G_RVS (= C1M861 = RVF) <= 17.00 mag) are being processed in RVS (per viewing direction/telescope; the effects of star detection and confirmation probabilities, crowding, etc., are not included). Caution: the brighter star-selection limiting magnitude of RVS compared to SM/AF/BP/RP (G_RVS = 17.00 mag versus G = 20.00 mag, respectively; see parameters Selection_Magnitude_Maximum) is assumed to correspond to a factor :Nature:Sky_StarDensity_RVSReductionFactor reduction in the number of stars
         # <p>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        FOCALPLANE_STARPROCESSINGRATE_WORSTCASE = 9621.0 # [star s^-1]

        #
         # Total FoV (i.e., including dead zones between CCDs) in the across-scan direction per viewing direction (telescope)
         # <p>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        FOV_AC = 0.39367 # [deg]

        #
         # Total actice FoV (i.e., excluding dead zones between CCDs) in the across-scan direction per viewing direction (telescope)
         # <p>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        FOV_AC_ACTIVE = 0.38621 # [deg]

        #
         # Total FoV (i.e., including dead zones between CCDs) of RVS in the along-scan direction
         # <p>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        FOV_AL = 0.23511 # [deg]

        #
         # Total active FoV (i.e., excluding dead zones between CCDs) of RVS in the along-scan direction
         # <p>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        FOV_AL_ACTIVE = 0.22070 # [deg]

        #
         # Total FoV (i.e., including dead zones between CCDs) of RVS
         # <p>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        FOV = 0.09256 # [deg^2]

        #
         # Total active FoV (i.e., excluding dead zones between CCDs) of RVS
         # <p>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        FOV_ACTIVE = 0.08524 # [deg^2]

        #
         # Total active RVS FoV (i.e., excluding dead zones between CCDs) swept out per second
         # <p>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        FOV_AREASWEPT_AL_ACTIVE = 0.00644 # [deg^2 s^-1]

        #
         # Average number of RVS transits (per viewing direction/telescope) over the nominal effective operational lifetime, assuming uniform sky coverage (the effect of faint-object, spectroscopic-data dead time is taken into account; star detection and confirmation probabilities, crowding, etc., are not included). The vector elements refer to [G = 10.0 mag, G = 15.0 mag, G = 17.5 mag]
         # <p>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        FOV_NUMBEROFTRANSITS_AL_TOTAL = [ 21.2, 14.9, 14.9 ]

        #
         # Active transit time (i.e., excluding dead zones between CCDs), in the along-scan direction, of RVS; this parameter thus equals the effective exposure time per FoV transit, although any permanent TDI-gate activation is not included in the calculations
         # <p>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        FOV_TRANSITTIME_AL_ACTIVE = 13.242 # [s]

        #
         # Average effective (active) total transit time in RVS over the nominal effective operational lifetime, assuming uniform sky coverage (the effects of CCD dead zones and faint-object, spectrocopic-data dead time are taken into account). This parameter thus equals the effective exposure time per viewing direction (telescope) integrated over the mission, although any permanent TDI-gate activation is not included in the calculations. The vector elements refer to [G = 10.0 mag, G = 15.0 mag, G = 17.5 mag]
         # <p>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        FOV_TRANSITTIME_AL_ACTIVETOTAL = [ 280.805, 197.205, 197.226 ] # [s]

        #
         # Average number of stars (G_RVS (= C1M861 = RVF) <= 17.00 mag) present in the active RVS FoV at each instant of time. Caution: the brighter star-selection limiting magnitude of RVS compared to SM/AF/BP/RP (G_RVS = 17.00 mag versus G = 20.00 mag, respectively; see parameters Selection_Magnitude_Maximum) is assumed to correspond to a factor :Nature:Sky_StarDensity_RVSReductionFactor reduction in the number of stars
         # <p>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        FOV_NUMBEROFSTARS_AVERAGE = 355.0 # [star]

        #
         # Design-value of the number of stars (C1M861 = 17.00 mag) present in the active RVS FoV at each instant of time. Caution: the brighter star-selection limiting magnitude of RVS compared to SM/AF/BP/RP (G_RVS = 17.00 mag versus G = 20.00 mag, respectively; see parameters Selection_Magnitude_Maximum) is assumed to correspond to a factor :Nature:Sky_StarDensity_RVSReductionFactor reduction in the number of stars
         # <p>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        FOV_NUMBEROFSTARS_DESIGN = 8499.0 # [star]

        #
         # Typical number of stars (G_RVS (= C1M861 = RVF) <= 17.00 mag) present in the active RVS FoV at each instant of time. Caution: the brighter star-selection limiting magnitude of RVS compared to SM/AF/BP/RP (G_RVS = 17.00 mag versus G = 20.00 mag, respectively; see parameters Selection_Magnitude_Maximum) is assumed to correspond to a factor :Nature:Sky_StarDensity_RVSReductionFactor reduction in the number of stars
         # <p>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        FOV_NUMBEROFSTARS_TYPICAL = 2125.0 # [star]

        #
         # Maximum number of stars (G_RVS (= C1M861 = RVF) <= 17.00 mag) present in the active RVS FoV at some instant of time. Caution: the brighter star-selection limiting magnitude of RVS compared to SM/AF/BP/RP (G_RVS = 17.00 mag versus G = 20.00 mag, respectively; see parameters Selection_Magnitude_Maximum) is assumed to correspond to a factor :Nature:Sky_StarDensity_RVSReductionFactor reduction in the number of stars
         # <p>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        FOV_NUMBEROFSTARS_WORSTCASE = 42495.0 # [star]

        #
         # Bright G_RVS magnitude limit of the RVS-LR mode. Objects brighter than this magnitude are observed in RVS-HR mode. The current numerical value of the threshold magnitude is the default value. In practice, this value will remain changable throughout the mission from the ground
         # <p>
         # Source: ESA, 11 March 2010, 'Gaia mission requirements document (MRD)', issue 3, revision 0, GAIA-EST-RD-00553, Requirement SCI-509<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        MAGNITUDE_MINIMUMLR = 10.00 # [mag]

        #
         # Effective, worst-case, beginning-of-life reflectivity/transmissivity attenuation of the RVS field of view (averaged over the two viewing directions) caused by particulate and molecular contamination of all optics and detectors, conservatively ignoring the in-obit de-contamination / payload out-gassing phase
         # <p>
         # Source: EADS-Astrium, 25 February 2011, 'Science Performance Budget Report', GAIA.ASF.RP.SAT.00005, issue 5, revision 0, based on EADS-Astrium, 30 November 2011, 'Gaia payload contamination analysis', GAIA.ASF.TCN.PLM.00036, issue 4, revision 0<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        OPTICS_ATTENUATION_PARTICULATEANDMOLECULARCONTAMINATION = 8.69 # [%]

        #
         # For a wavelength \lambda [nm], the effective reflectivity/transmissivity attenuation linked to scattered light caused by surface rugosity equals \exp[-4.6 * (2 \pi / \lambda [nm])^2 * (SUM)], where SUM = SUM_{\rm optical surfaces} (\Delta n * rugosity [nm])^2, with rugosity the surface rugosity of the optical surface and \Delta n the difference between the refractive index before and after the optical surface, i.e., \Delta n = 2.0 for reflection on a mirror and \Delta n = 0.5 for transmission through glass/vacuum diopters. This parameter defines the effective rugosity of the RVS instrument (including the telescope), i.e., SQRT(SUM). The surface rugosity equals 2 nm RMS for the M1 mirror and 1 nm RMS for all other surfaces (M2-M6 mirrors, BP/RP prism faces, RVS OMA prism faces, RVS grating faces, and RVS filter-plate faces)
         # <p>
         # Source: EADS-Astrium, 25 February 2011, 'Science Performance Budget Report', GAIA.ASF.RP.SAT.00005, issue 5, revision 0<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        OPTICS_RUGOSITY_EFFECTIVE = 6.24 # [nm]

        #
         # Transmission of the fused-Silica prisms in the RVS optics at 860 nm. Each prism has two surfaces, both of which have an anti-reflection coating. According to the reference document, the fused-Silica bulk transmission can be derived as 10^(d*k), with k = log10(0.9998)/10 and d the path length in fused Silica in units of mm (parameter :Satellite:RVS:Prism_Thickness; see also parameter :Nature:FusedSilica_Transmissivity_10mm). The vector elements of this parameter refer to the four RVS prisms (see parameter Spectrometer_NumberOfPrisms), named WL1, PR2, PR3, and WL4
         # <p>
         # Source: EADS-Astrium, 18 April 2011, 'RVS OMA budget report', GAIA.ASF.BG.PLM.00016, issue 6, revision 0<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        PRISM_TRANSMISSIVITY_860NM = [ 0.987, 0.982, 0.983, 0.983 ]

        #
         # Number of detected photo-electrons per arcsec^2 per s per telescope (viewing direction) for a typical sky-background surface brightness (:Nature:Sky_SurfaceBrightness_Average)
         # <p>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        SKY_NUMBEROFPHOTOELECTRONS = 0.756 # [e^- s^-1 arcsec^-2 FoV^-1]

        #
         # The total throughput of the RVS spectrometer (also known as the RVS Opto-Mechanical Assembly or OMA) at 860 nm, including the grating plate, the four prisms, and the bandpass-filter plate, including bulk-transmission losses of the fused-Silica elements. This transmissivity does neither include the transmissivity attenuation linked to scattered light caused by surface rugosity (see parameter Optics_Rugosity_Effective) nor the transmissivity attenuation caused by particulate and molecular contamination of all optics and detectors (see parameter Optics_Attenuation_ParticulateAndMolecularContamination). Note that the total throughput is compliant with the required value of 0.60 specified through Requirement RVS-50 of EADS-Astrium, 29 September 2009, 'Gaia Radial Velocity Spectrometer Opto Mechanical Assembly Requirements Specification', GAIA.ASF.SP.PLM.00025, issue 5, revision 1
         # <p>
         # Source: EADS-Astrium, 18 April 2011, 'RVS OMA budget report', GAIA.ASF.BG.PLM.00016, issue 6, revision 0<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        SPECTROMETER_TRANSMISSIVITY_860NM = 0.741

        #
         # Width of a spectral resolution element in units of AL pixels
         # <p>
         # Source: Assumed value, derived based on EADS-Astrium, 22 July 2008, 'Gaia Instruments Optical Performances Delivery Explanatory Note', GAIA.ASF.TCN.PLM.00108, issue 1, revision 1, to be consistent with a mean spectrum length of 1100.69 pixels (parameter Spectrum_Length) and the nominal RVS spectral resolving power of 11,500 (parameter Spectrum_ResolvingPower_Nominal)<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        SPECTRUM_RESOLUTIONELEMENT_PIXEL = 3.0504 # [AL pixel]

        #
         # Width of a spectral resolution element in units of nm
         # <p>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        SPECTRUM_RESOLUTIONELEMENT_NANOMETER = 0.0748 # [nm]

        #
         # Number of resolution elements
         # <p>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        SPECTRUM_NUMBEROFRESOLUTIONELEMENTS = 360.8

        #
         # Spectrum dispersion. EADS-Astrium, 29 September 2009, 'Gaia Radial Velocity Spectrometer Opto Mechanical Assembly Requirements Specification', GAIA.ASF.SP.PLM.00025, issue 5, revision 1, Requirement RVS-57 limits the deviation of the dispersion, anywhere in the RVS FoV, to 1% relative to the theoretical dispersion generated by the specified optical prescription
         # <p>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        SPECTRUM_DISPERSION = 0.02453 # [nm pixel^-1]

        #
         # Spectrum sampling in the RVS-LR mode
         # <p>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        SPECTRUM_SAMPLING_LR = 0.07359 # [nm sample^-1]

        #
         # Spectrum sampling in the RVS-HR mode
         # <p>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        SPECTRUM_SAMPLING_HR = 0.02453 # [nm sample^-1]

        #
         # Requirement on the video-chain noise in units of electrons
         # <p>
         # Source: EADS-Astrium, 28 April 2008, 'PEM type-1 Requirements Specification', GAIA.ASF.SP.PLM.00027, issue 6, revision 0, Requirement PEM1-302<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        VIDEOCHAIN_DETECTIONNOISE_REQUIREMENTTOTALLR = 0.787 # [e^-]

        #
         # Requirement on the video-chain noise in units of electrons
         # <p>
         # Source: EADS-Astrium, 28 April 2008, 'PEM type-1 Requirements Specification', GAIA.ASF.SP.PLM.00027, issue 6, revision 0, Requirement PEM1-302<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        VIDEOCHAIN_DETECTIONNOISE_REQUIREMENTTOTALHR = 1.312 # [e^-]

        #
         # Video-chain noise in units of electrons, taking into account that the video chain digitises the video level a certain number of times (1 for SM, 2 for AF1, 8 for AF2-9, 4 for BP, 4 for RP, 8 for RVS-LR, and 2 for RVS-HR) and averages the successive acquisitions in order to reduce noise. The video-chain noise includes ADC noise, DNL noise, analogue video noise, quantisation noise, and rounding noise. The numerical value reflects the mean measured performance of all PEM DMs tested with the FM acceptance EGSE at CRISA
         # <p>
         # Source: EADS-Astrium, 4 January 2010, 'Focal-Plane Assembly (FPA) Performance Budget', GAIA.ASF.BG.PLM.00008, issue 5, revision 0<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        VIDEOCHAIN_DETECTIONNOISE_TOTALLR = 1.254 # [e^-]

        #
         # Video-chain noise in units of electrons, taking into account that the video chain digitises the video level a certain number of times (1 for SM, 2 for AF1, 8 for AF2-9, 4 for BP, 4 for RP, 8 for RVS-LR, and 2 for RVS-HR) and averages the successive acquisitions in order to reduce noise. The video-chain noise includes ADC noise, DNL noise, analogue video noise, quantisation noise, and rounding noise. The numerical value reflects the mean measured performance of all PEM DMs tested with the FM acceptance EGSE at CRISA
         # <p>
         # Source: EADS-Astrium, 4 January 2010, 'Focal-Plane Assembly (FPA) Performance Budget', GAIA.ASF.BG.PLM.00008, issue 5, revision 0<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        VIDEOCHAIN_DETECTIONNOISE_TOTALHR = 1.469 # [e^-]

        #
         # Gain of the video chain
         # <p>
         # Source: EADS-Astrium, 4 January 2010, 'Focal-Plane Assembly (FPA) Performance Budget', GAIA.ASF.BG.PLM.00008, issue 5, revision 0<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        VIDEOCHAIN_GAIN_LSBPERELECTRON = 1.90551 # [LSB per e^-]

        #
         # Useful dynamic range of the video chain, after taking the CCD register offset and margins for noise and reference-level variation into account
         # <p>
         # Source: EADS-Astrium, 4 January 2010, 'Focal-Plane Assembly (FPA) Performance Budget', GAIA.ASF.BG.PLM.00008, issue 5, revision 0. Reference document: R. Kohley, 7 April 2011, 'Gaia PEM DCDS working principle', GAIA-CH-TN-ESAC-RKO-016, issue 1, revision 0<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        VIDEOCHAIN_DYNAMICRANGE_MILLIVOLT = 102.3 # [mV]

        #
         # Useful dynamic range of the video chain
         # <p>
         # Source: EADS-Astrium, 4 January 2010, 'Focal-Plane Assembly (FPA) Performance Budget', GAIA.ASF.BG.PLM.00008, issue 5, revision 0<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        VIDEOCHAIN_DYNAMICRANGE = 15030.0 # [e^-]

        #
         # Nominal sample offset, in units of LSB
         # <p>
         # Source: Reference document: R. Kohley, 7 April 2011, 'Gaia PEM DCDS working principle', GAIA-CH-TN-ESAC-RKO-016, issue 1, revision 0<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        VIDEOCHAIN_OFFSET_NOMINAL = 13565 # [LSB]

        #
         # Length of the RVS wavelength range (interval)
         # <p>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        WAVELENGTHRANGE_LENGTH = 27.0 # [nm]

        #
         # Central wavelength of the RVS wavelength range
         # <p>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        WAVELENGTHRANGE_CENTRE = 860.5 # [nm]

        end



     class SM
        #
         # CCD-line duration (taking along-scan (parallel) hardware binning into account), also known as the period of the parallel transfer-gate clock
         # <p>
         # Source: EADS-Astrium, 27 January 2010, 'Focal-Plane Assembly General Design Description (FPA GDD)', GAIA.ASF.TCN.PLM.00055, issue 5, revision 0<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        CCD_LINEDURATION = 1.965600 # [ms]

        #
         # Nominal thickness of the field-free region of a default (broad-band) CCD, in use in SM
         # <p>
         # Source: T. Eaton, e2v Technologies, 16 June 2006, 'Gaia CCD FM phase performance assessment report', GAIA-E2V-RP-123, issue 1, Section 3.1.1.6, page 10. Reference documents: A. Short, J.H.J. de Bruijne, 26 September 2003, 'CCD QE and MTF', GAIA-AS-002, Section 4.2 and R. Kohley, 4 February 2009, 'Quantum Efficiency and Pixel Response Non-Uniformity in Gaia CCDs', GAIA-CH-TN-ESAC-RKO-003-01, issue 1, revision 0<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        CCD_THICKNESS_FIELDFREEREGION = 4.0 # [10^-6 m]

        #
         # CCD total detection noise (TDN) in units of electrons (typical value). Total detection noise includes CCD readout noise (RON), CCD dark noise, KTC noise, overall video-chain noise (including ADC noise, analogue noise, and quantisation noise), and coupling and EMC-effects noise
         # <p>
         # Source: EADS-Astrium, 4 January 2010, 'Focal-Plane Assembly (FPA) Performance Budget', GAIA.ASF.BG.PLM.00008, issue 5, revision 0<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        CCD_DETECTIONNOISE_TYPICALTOTAL = 11.52 # [e^-]

        #
         # CCD node capacitance; the factor 0.64 refers to a two-stage amplifier
         # <p>
         # Source: EADS-Astrium, 4 January 2010, 'Focal-Plane Assembly (FPA) Performance Budget', GAIA.ASF.BG.PLM.00008, issue 5, revision 0<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        CCD_NODECAPACITANCE = 15.98 # [fF]

        #
         # CCD amplifier bandwidth, calculated as 1 / (2 \pi \tau) and assuming a time constant \tau = 40 ns, as measured by e2v
         # <p>
         # Source: EADS-Astrium, 27 January 2010, 'Focal-Plane Assembly General Design Description (FPA GDD)', GAIA.ASF.TCN.PLM.00055, issue 5, revision 0, page 61<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        CCD_AMPLIFIERBANDWIDTH = 3978.9 # [kHz]

        #
         # Number of CCDs in SM. Note that SM1 is only seen by FoV1 (preceding) and that SM2 is only seen by FoV2 (following)
         # <p>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        CCD_NUMBER = 14

        #
         # Total number of light-sensitive pixels in (the image sections of) all SM CCDs. Note that SM1 is only seen by FoV1 (preceding) and that SM2 is only seen by FoV2 (following). Any permanent TDI-gate activation is not included in the calculations
         # <p>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        CCD_LIGHTSENSITIVEAREA_PIXELTOTAL = 123692856 # [pixel]

        #
         # Average rate at which stars (G <= 20.00 mag) are being processed in SM (per viewing direction/telescope; the effects of star detection and confirmation probabilities, crowding, etc., are not included)
         # <p>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        FOCALPLANE_STARPROCESSINGRATE_AVERAGE = 282.0 # [star s^-1]

        #
         # Typical rate at which stars (G <= 20.00 mag) are being processed in SM (per viewing direction/telescope; the effects of star detection and confirmation probabilities, crowding, etc., are not included)
         # <p>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        FOCALPLANE_STARPROCESSINGRATE_TYPICAL = 1689.0 # [star s^-1]

        #
         # Design-value of the rate at which stars (G <= 20.00 mag) are being processed in SM (per viewing direction/telescope; the effects of star detection and confirmation probabilities, crowding, etc., are not included)
         # <p>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        FOCALPLANE_STARPROCESSINGRATE_DESIGN = 6755.0 # [star s^-1]

        #
         # Maximum rate at which stars (G <= 20.00 mag) are being processed in SM (per viewing direction/telescope; the effects of star detection and confirmation probabilities, crowding, etc., are not included)
         # <p>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        FOCALPLANE_STARPROCESSINGRATE_WORSTCASE = 33773.0 # [star s^-1]

        #
         # Total FoV (i.e., including dead zones between CCDs) of SM in the along-scan direction. Note that SM1 is only seen by FoV1 (preceding) and that SM2 is only seen by FoV2 (following); this property has been included in the calculation of this parameter, so that this FoV effectively holds per viewing direction (telescope). Note, however, that any permanent TDI-gate activation is not included in the calculations
         # <p>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        FOV_AL = 0.07717 # [deg]

        #
         # Total active FoV (i.e., excluding dead zones between CCDs) of SM in the along-scan direction. Note that SM1 is only seen by FoV1 (preceding) and that SM2 is only seen by FoV2 (following); this property has been included in the calculation of this parameter, so that this FoV effectively holds per viewing direction (telescope). Note, however, that any permanent TDI-gate activation is not included in the calculations
         # <p>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        FOV_AL_ACTIVE = 0.07357 # [deg]

        #
         # Total FoV (i.e., including dead zones between CCDs) of SM. Note that SM1 is only seen by FoV1 (preceding) and that SM2 is only seen by FoV2 (following); this property has been included in the calculation of this parameter, so that this FoV effectively holds per viewing direction (telescope). Note, however, that any permanent TDI-gate activation is not included in the calculations
         # <p>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        FOV = 0.05331 # [deg^2]

        #
         # Total active FoV (i.e., excluding dead zones between CCDs) of SM. Note that SM1 is only seen by FoV1 (preceding) and that SM2 is only seen by FoV2 (following); this property has been included in the calculation of this parameter, so that this FoV effectively holds per viewing direction (telescope). Note, however, that any permanent TDI-gate activation is not included in the calculations
         # <p>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        FOV_ACTIVE = 0.04972 # [deg^2]

        #
         # Total active SM FoV (i.e., excluding dead zones between CCDs) swept out per second
         # <p>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        FOV_AREASWEPT_AL_ACTIVE = 0.01126 # [deg^2 s^-1]

        #
         # Average number of SM transits (per viewing direction/telescope) over the nominal effective operational lifetime, assuming uniform sky coverage (the effect of faint-object, astrometric-data dead time is taken into account; star detection and confirmation probabilities, crowding, etc., are not included). The vector elements refer to [G = 10.0 mag, G = 15.0 mag, G = 20.0 mag]
         # <p>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        FOV_NUMBEROFTRANSITS_AL_TOTAL = [ 38.3, 36.8, 37.0 ]

        #
         # Active transit time (i.e., excluding dead zones between CCDs), in the along-scan direction, of SM; this parameter thus equals the effective exposure time per viewing direction (telescope) per FoV transit, although any permanent TDI-gate activation is not included in the calculations
         # <p>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        FOV_TRANSITTIME_AL_ACTIVE = 4.414 # [s]

        #
         # Average effective (active) total transit time in SM (per viewing direction/telescope) over the nominal effective operational lifetime, assuming uniform sky coverage (the effects of CCD dead zones and faint-object, astrometric-data dead time are taken into account). This parameter thus equals the effective exposure time per viewing direction (telescope) integrated over the mission, although any permanent TDI-gate activation is not included in the calculations. The vector elements refer to [G = 10.0 mag, G = 15.0 mag, G = 20.0 mag]
         # <p>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        FOV_TRANSITTIME_AL_ACTIVETOTAL = [ 169.141, 162.483, 163.239 ] # [s]

        #
         # Average number of stars (G <= 20.00 mag) present in the active SM FoV (per viewing direction/telescope) at each instant of time
         # <p>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        FOV_NUMBEROFSTARS_AVERAGE = 1247.0 # [star]

        #
         # Typical number of stars (G <= 20.00 mag) present in the active SM FoV (per viewing direction/telescope) at each instant of time
         # <p>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        FOV_NUMBEROFSTARS_TYPICAL = 7458.0 # [star]

        #
         # Design-value of the number of stars (G <= 20.00 mag) present in the active SM FoV (per viewing direction/telescope) at each instant of time
         # <p>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        FOV_NUMBEROFSTARS_DESIGN = 29833.0 # [star]

        #
         # Maximum number of stars (G <= 20.00 mag) present in the active SM FoV (per viewing direction/telescope) at some instant of time
         # <p>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        FOV_NUMBEROFSTARS_WORSTCASE = 149165.0 # [star]

        #
         # Number of detected photo-electrons per arcsec^2 per s per telescope (viewing direction) for a typical sky-background surface brightness (:Nature:Sky_SurfaceBrightness_Average)
         # <p>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        SKY_NUMBEROFPHOTOELECTRONS = 21.266 # [e^- s^-1 arcsec^-2 FoV^-1]

        #
         # Requirement on the video-chain noise in units of electrons
         # <p>
         # Source: EADS-Astrium, 28 April 2008, 'PEM type-1 Requirements Specification', GAIA.ASF.SP.PLM.00027, issue 6, revision 0, Requirement PEM1-302<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        VIDEOCHAIN_DETECTIONNOISE_REQUIREMENTTOTAL = 7.794 # [e^-]

        #
         # Video-chain noise in units of electrons, taking into account that the video chain digitises the video level a certain number of times (1 for SM, 2 for AF1, 8 for AF2-9, 4 for BP, 4 for RP, 8 for RVS-LR, and 2 for RVS-HR) and averages the successive acquisitions in order to reduce noise. The video-chain noise includes ADC noise, DNL noise, analogue video noise, quantisation noise, and rounding noise. The numerical value reflects the mean measured performance of all PEM DMs tested with the FM acceptance EGSE at CRISA
         # <p>
         # Source: EADS-Astrium, 4 January 2010, 'Focal-Plane Assembly (FPA) Performance Budget', GAIA.ASF.BG.PLM.00008, issue 5, revision 0<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        VIDEOCHAIN_DETECTIONNOISE_TOTAL = 10.210 # [e^-]

        #
         # Gain of the video chain
         # <p>
         # Source: EADS-Astrium, 4 January 2010, 'Focal-Plane Assembly (FPA) Performance Budget', GAIA.ASF.BG.PLM.00008, issue 5, revision 0<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        VIDEOCHAIN_GAIN_LSBPERELECTRON = 0.25660 # [LSB per e^-]

        #
         # Useful dynamic range of the video chain, after taking the CCD register offset and margins for noise and reference-level variation into account
         # <p>
         # Source: EADS-Astrium, 4 January 2010, 'Focal-Plane Assembly (FPA) Performance Budget', GAIA.ASF.BG.PLM.00008, issue 5, revision 0. Reference document: R. Kohley, 7 April 2011, 'Gaia PEM DCDS working principle', GAIA-CH-TN-ESAC-RKO-016, issue 1, revision 0<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        VIDEOCHAIN_DYNAMICRANGE_MILLIVOLT = 1487.8 # [mV]

        #
         # Useful dynamic range of the video chain
         # <p>
         # Source: EADS-Astrium, 4 January 2010, 'Focal-Plane Assembly (FPA) Performance Budget', GAIA.ASF.BG.PLM.00008, issue 5, revision 0<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        VIDEOCHAIN_DYNAMICRANGE = 231924.0 # [e^-]

        #
         # Nominal sample offset, in units of LSB
         # <p>
         # Source: Reference document: R. Kohley, 7 April 2011, 'Gaia PEM DCDS working principle', GAIA-CH-TN-ESAC-RKO-016, issue 1, revision 0<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        VIDEOCHAIN_OFFSET_NOMINAL = 1572 # [LSB]

        end



     class CDMS
        #
         # Length of the 'data field at large' (including secondary [data-field] header, 'true' source-data field, and packet-error-control [PEC] trailer) of the CCSDS source packet
         # <p>
         # Source: EADS-Astrium, 29 March 2012, 'Gaia space/ground interface control document, Volume 3: generic TM/TC ICD', GAIA.ASF.ICD.SAT.00003, issue 4, revision 1, Section 6<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        SOURCEPACKET_DATAFIELDATLARGE = 524288 # [bit]

        #
         # CCSDS source-packet overhead, in units of percent. Compressed star packets are transformed into CCSDS source packets. The overhead in this conversion is 0.027%
         # <p>
         # Source: EADS-Astrium, 29 March 2012, 'Gaia space/ground interface control document, Volume 3: generic TM/TC ICD', GAIA.ASF.ICD.SAT.00003, issue 4, revision 1, Section 6. See also EADS-Astrium, 11 October 2011, 'Link Budget', GAIA.ASU.BG.SAT.00002, issue 11, revision 0, Section 4.4<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        SOURCEPACKET_OVERHEAD_PERCENT = 0.027 # [%]

        #
         # Total overhead in the packet telemetry, when starting from CCSDS source packets, in units of percent. This includes all packetisation and error-correction overheads (Reed-Solomon encoding and transfer-frame overheads) but excludes convolutional encoding and star-packet overheads
         # <p>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        TELEMETRY_OVERHEAD_PERCENT = 14.736 # [%]

        #
         # Transfer-frame overhead due to Reed-Solomon encoding (i.e., at convolutional-encoder input, i.e., Reed-Solomon-encoder output), in units of bits
         # <p>
         # Source: EADS-Astrium, 17 May 2010, 'Science Telemetry Downlink Management', GAIA.ASF.TCN.SAT.00015, issue 1, revision 4, Section 6.3.1.2<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        TRANSFERFRAME_OVERHEADATCONVOLUTIONALENCODERINPUT_BIT = 1312 # [bit]

        #
         # Transfer-frame overhead due to Reed-Solomon encoding (i.e., at convolutional-encoder input, i.e., Reed-Solomon-encoder output), in units of percent
         # <p>
         # Source: EADS-Astrium, 17 May 2010, 'Science Telemetry Downlink Management', GAIA.ASF.TCN.SAT.00015, issue 1, revision 4, Section 6.3.1.2<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        TRANSFERFRAME_OVERHEADATCONVOLUTIONALENCODERINPUT_PERCENT = 14.709 # [%]

        #
         # Transfer-frame overhead, in units of percent. CCSDS source packets are transformed into transfer frames by the TFG. The overhead in this conversion is 1.456%
         # <p>
         # Source: EADS-Astrium, 11 October 2011, 'Link Budget', GAIA.ASU.BG.SAT.00002, issue 11, revision 0, Section 4.4<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        TRANSFERFRAME_OVERHEAD_PERCENT = 1.456 # [%]

        end



     class PDHS
        #
         # End-of-Life (EoL) capacity of the on-board Solid-State Mass Memory (SSMM; in units of Gb). The SSMM stores compressed science data and Auxiliary Science Data (ASD) prior to transmission to the ground. The EoL capacity is assumed to be identical to the Beginning-of-Life (BoL) capacity
         # <p>
         # Source: Syderal, 29 March 2010, 'PDHU Detailed Design Document', GAIA-SYD-DD-PDH-00001, issue 1, revision B, Section 4.4<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        SSMM_STORAGECAPACITY_EOL = 886.0 # [Gb]

        #
         # Beginning-of-Life (BoL) capacity of the on-board Solid-State Mass Memory (SSMM; in units of Gb). The SSMM stores compressed science data and Auxiliary Science Data (ASD) prior to transmission to the ground. The SSMM is composed of 6 memory boards. Each board houses 2 memory modules. Each module contains 5120 sectors. Each sector covers 32768 blocks. A block is composed of 512 bits (64 bytes). Every Star Packet (SP) or ASD packet received from the VPU is divided in blocks of 64 bytes, regardless of its size. As a result, the block containing the end of each packet is not full. The resulting padding of the block is not used, leading to an effective loss of storage capacity (see parameters :Satellite:PDHS:SSMM_Padding_*). A block contains the data of the packet and the corresponding Reed-Solomon control bits. Considering a Reed-Solomon code 64 / 60, the data payload are 60 bytes, 4 bytes are reserved for the Reed-Solomon control bytes. This Reed-Solomon code can correct up to 2 bytes anywhere in the data field. Nominally, 11 of the 12 available modules will be activated in flight. This parameter specifies the effectively available SSMM capacity, after subtraction of Reed-Solomon error-correction bits but without taking padding into account
         # <p>
         # Source: Syderal, 29 March 2010, 'PDHU Detailed Design Document', GAIA-SYD-DD-PDH-00001, issue 1, revision B, Section 4.4<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        SSMM_STORAGECAPACITY_BOL = 886.0 # [Gb]

        #
         # Length of the data field of the star packet; the data field is compressed. The length of the data field depends on the specific observing conditions, namely the possible absence of BP/RP data, truncation of AF windows, and/or truncation of BP/RP windows. The vector elements refer to the various possibilities in the order ({1, -, -}, {0, -, -}) where the triplets refer to {xp_data_present, af_window_truncated, xp_window_truncated} and 0 = no and 1 = yes and - = not applicable. SP1 class 0A corresponds to :Satellite:SM:SWS_WindowClass_0 + :Satellite:AF:S1:SWS_WindowClass_0 + :Satellite:AF:S2/S5/S8:SWS_WindowClass_0 + :Satellite:AF:S3/S4/S6/S7/S9:SWS_WindowClass_0 + :Satellite:BP:SWS_WindowClass_0 + :Satellite:RP:SWS_WindowClass_0
         # <p>
         # Source: EADS-Astrium, 16 January 2012, 'VPU to PDHU Telemetry Interface Control Document (ICD)', GAIA.ASF.ICD.SAT.00011, issue 2, revision 4<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        STARPACKET_DATAFIELD_SP1CLASS0A = [ 56256, 33216 ] # [bit]

        #
         # Length of the data field of the star packet; the data field is compressed. The length of the data field depends on the specific observing conditions, namely the possible absence of BP/RP data, truncation of AF windows, and/or truncation of BP/RP windows. The vector elements refer to the various possibilities in the order ({1, 1, -}, {1, 0, -}, {0, -, -}) where the triplets refer to {xp_data_present, af_window_truncated, xp_window_truncated} and 0 = no and 1 = yes and - = not applicable. SP1 class 0B corresponds to :Satellite:SM:SWS_WindowClass_0 + :Satellite:AF:S1:SWS_WindowClass_0 + :Satellite:AF:S2/S5/S8:SWS_WindowClass_0 + :Satellite:AF:S3/S4/S6/S7/S9:SWS_WindowClass_0 + :Satellite:BP:SWS_WindowClass_1 + :Satellite:RP:SWS_WindowClass_1
         # <p>
         # Source: EADS-Astrium, 16 January 2012, 'VPU to PDHU Telemetry Interface Control Document (ICD)', GAIA.ASF.ICD.SAT.00011, issue 2, revision 4<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        STARPACKET_DATAFIELD_SP1CLASS0B = [ 35136, 35136, 33216 ] # [bit]

        #
         # Length of the data field of the star packet; the data field is compressed. The length of the data field depends on the specific observing conditions, namely the possible absence of BP/RP data, truncation of AF windows, and/or truncation of BP/RP windows. The vector elements refer to the various possibilities in the order ({1, 1, 1}, {1, 1, 0}, {1, 0, 1}, {1, 0, 0}, {0, 1, -}, {0, 0, -}) where the triplets refer to {xp_data_present, af_window_truncated, xp_window_truncated} and 0 = no and 1 = yes and - = not applicable. SP1 class 1 corresponds to :Satellite:SM:SWS_WindowClass_1 + :Satellite:AF:S1:SWS_WindowClass_1 + :Satellite:AF:S2/S5/S8:SWS_WindowClass_1 + :Satellite:AF:S3/S4/S6/S7/S9:SWS_WindowClass_1 + :Satellite:BP:SWS_WindowClass_1 + :Satellite:RP:SWS_WindowClass_1
         # <p>
         # Source: EADS-Astrium, 16 January 2012, 'VPU to PDHU Telemetry Interface Control Document (ICD)', GAIA.ASF.ICD.SAT.00011, issue 2, revision 4<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        STARPACKET_DATAFIELD_SP1CLASS1 = [ 5376, 5376, 4896, 4896, 3456, 2976 ] # [bit]

        #
         # Length of the data field of the star packet; the data field is compressed. The length of the data field depends on the specific observing conditions, namely the possible absence of BP/RP data, truncation of AF windows, and/or truncation of BP/RP windows. The vector elements refer to the various possibilities in the order ({1, 1, 1}, {1, 1, 0}, {1, 0, 1}, {1, 0, 0}, {0, 1, -}, {0, 0, -}) where the triplets refer to {xp_data_present, af_window_truncated, xp_window_truncated} and 0 = no and 1 = yes and - = not applicable. SP1 class 2 corresponds to :Satellite:SM:SWS_WindowClass_1 + :Satellite:AF:S1:SWS_WindowClass_2 + :Satellite:AF:S2/S5/S8:SWS_WindowClass_2 + :Satellite:AF:S3/S4/S6/S7/S9:SWS_WindowClass_2 + :Satellite:BP:SWS_WindowClass_1 + :Satellite:RP:SWS_WindowClass_1
         # <p>
         # Source: EADS-Astrium, 16 January 2012, 'VPU to PDHU Telemetry Interface Control Document (ICD)', GAIA.ASF.ICD.SAT.00011, issue 2, revision 4<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        STARPACKET_DATAFIELD_SP1CLASS2 = [ 4512, 4512, 4032, 4032, 2592, 2112 ] # [bit]

        #
         # Length of the data field of the star packet; the data field is uncompressed. The length of the data field depends on the specific observing conditions, namely the possible truncation of RVS windows. The value quoted here is the default configuration: no window truncations. SP2 class 0 corresponds to :Satellite:RVS:SWS_WindowClass_0
         # <p>
         # Source: EADS-Astrium, 16 January 2012, 'VPU to PDHU Telemetry Interface Control Document (ICD)', GAIA.ASF.ICD.SAT.00011, issue 2, revision 4<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        STARPACKET_DATAFIELD_SP2CLASS0 = 604800 # [bit]

        #
         # Length of the data field of the star packet; the data field is compressed. The length of the data field depends on the specific observing conditions, namely the possible truncation of RVS windows. The vector elements refer to the various possibilities in the order (1, 0) where the index denotes rvs_window_truncated and 0 = no and 1 = yes. SP2 class 1 corresponds to :Satellite:RVS:SWS_WindowClass_1
         # <p>
         # Source: EADS-Astrium, 16 January 2012, 'VPU to PDHU Telemetry Interface Control Document (ICD)', GAIA.ASF.ICD.SAT.00011, issue 2, revision 4<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        STARPACKET_DATAFIELD_SP2CLASS1 = [ 60480, 60480 ] # [bit]

        #
         # Length of the data field of the star packet; the data field is compressed. The length of the data field depends on the specific observing conditions, namely the possible truncation of RVS windows. The vector elements refer to the various possibilities in the order (1, 0) where the index denotes rvs_window_truncated and 0 = no and 1 = yes. SP2 class 2 corresponds to :Satellite:RVS:SWS_WindowClass_2
         # <p>
         # Source: EADS-Astrium, 16 January 2012, 'VPU to PDHU Telemetry Interface Control Document (ICD)', GAIA.ASF.ICD.SAT.00011, issue 2, revision 4<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        STARPACKET_DATAFIELD_SP2CLASS2 = [ 20160, 20160 ] # [bit]

        #
         # Size of the star packet, before compression and including all overheads due to headers and the sync words. The size of the star packet depends on the specific observing conditions, namely the possible absence of BP/RP data, truncation of AF windows, and/or truncation of BP/RP windows. The vector elements refer to the various possibilities in the order ({1, -, -}, {0, -, -}) where the triplets refer to {xp_data_present, af_window_truncated, xp_window_truncated} and 0 = no and 1 = yes and - = not applicable. SP1 class 0A corresponds to :Satellite:SM:SWS_WindowClass_0 + :Satellite:AF:S1:SWS_WindowClass_0 + :Satellite:AF:S2/S5/S8:SWS_WindowClass_0 + :Satellite:AF:S3/S4/S6/S7/S9:SWS_WindowClass_0 + :Satellite:BP:SWS_WindowClass_0 + :Satellite:RP:SWS_WindowClass_0
         # <p>
         # Source: EADS-Astrium, 16 January 2012, 'VPU to PDHU Telemetry Interface Control Document (ICD)', GAIA.ASF.ICD.SAT.00011, issue 2, revision 4<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        STARPACKET_SIZE_SP1CLASS0A = [ 56432, 33392 ] # [bit]

        #
         # Size of the star packet, before compression and including all overheads due to headers and the sync words. The size of the star packet depends on the specific observing conditions, namely the possible absence of BP/RP data, truncation of AF windows, and/or truncation of BP/RP windows. The vector elements refer to the various possibilities in the order ({1, 1, -}, {1, 0, -}, {0, -, -}) where the triplets refer to {xp_data_present, af_window_truncated, xp_window_truncated} and 0 = no and 1 = yes and - = not applicable. SP1 class 0B corresponds to :Satellite:SM:SWS_WindowClass_0 + :Satellite:AF:S1:SWS_WindowClass_0 + :Satellite:AF:S2/S5/S8:SWS_WindowClass_0 + :Satellite:AF:S3/S4/S6/S7/S9:SWS_WindowClass_0 + :Satellite:BP:SWS_WindowClass_1 + :Satellite:RP:SWS_WindowClass_1
         # <p>
         # Source: EADS-Astrium, 16 January 2012, 'VPU to PDHU Telemetry Interface Control Document (ICD)', GAIA.ASF.ICD.SAT.00011, issue 2, revision 4<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        STARPACKET_SIZE_SP1CLASS0B = [ 35552, 35312, 33392 ] # [bit]

        #
         # Size of the star packet, before compression and including all overheads due to headers and the sync words. The size of the star packet depends on the specific observing conditions, namely the possible absence of BP/RP data, truncation of AF windows, and/or truncation of BP/RP windows. The vector elements refer to the various possibilities in the order ({1, 1, 1}, {1, 1, 0}, {1, 0, 1}, {1, 0, 0}, {0, 1, -}, {0, 0, -}) where the triplets refer to {xp_data_present, af_window_truncated, xp_window_truncated} and 0 = no and 1 = yes and - = not applicable. SP1 class 1 corresponds to :Satellite:SM:SWS_WindowClass_1 + :Satellite:AF:S1:SWS_WindowClass_1 + :Satellite:AF:S2/S5/S8:SWS_WindowClass_1 + :Satellite:AF:S3/S4/S6/S7/S9:SWS_WindowClass_1 + :Satellite:BP:SWS_WindowClass_1 + :Satellite:RP:SWS_WindowClass_1
         # <p>
         # Source: EADS-Astrium, 16 January 2012, 'VPU to PDHU Telemetry Interface Control Document (ICD)', GAIA.ASF.ICD.SAT.00011, issue 2, revision 4<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        STARPACKET_SIZE_SP1CLASS1 = [ 5936, 5696, 5344, 5104, 3776, 3184 ] # [bit]

        #
         # Size of the star packet, before compression and including all overheads due to headers and the sync words. The size of the star packet depends on the specific observing conditions, namely the possible absence of BP/RP data, truncation of AF windows, and/or truncation of BP/RP windows. The vector elements refer to the various possibilities in the order ({1, 1, 1}, {1, 1, 0}, {1, 0, 1}, {1, 0, 0}, {0, 1, -}, {0, 0, -}) where the triplets refer to {xp_data_present, af_window_truncated, xp_window_truncated} and 0 = no and 1 = yes and - = not applicable. SP1 class 2 corresponds to :Satellite:SM:SWS_WindowClass_1 + :Satellite:AF:S1:SWS_WindowClass_2 + :Satellite:AF:S2/S5/S8:SWS_WindowClass_2 + :Satellite:AF:S3/S4/S6/S7/S9:SWS_WindowClass_2 + :Satellite:BP:SWS_WindowClass_1 + :Satellite:RP:SWS_WindowClass_1
         # <p>
         # Source: EADS-Astrium, 16 January 2012, 'VPU to PDHU Telemetry Interface Control Document (ICD)', GAIA.ASF.ICD.SAT.00011, issue 2, revision 4<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        STARPACKET_SIZE_SP1CLASS2 = [ 5024, 4784, 4480, 4240, 2864, 2320 ] # [bit]

        #
         # Size of the star packet, including all overheads due to headers and the sync words. The size of the star packet depends on the specific observing conditions, namely the possible truncation of RVS windows. The value quoted here is the default configuration: no window truncations. SP2 class 0 corresponds to :Satellite:RVS:SWS_WindowClass_0
         # <p>
         # Source: EADS-Astrium, 16 January 2012, 'VPU to PDHU Telemetry Interface Control Document (ICD)', GAIA.ASF.ICD.SAT.00011, issue 2, revision 4<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        STARPACKET_SIZE_SP2CLASS0 = 604976 # [bit]

        #
         # Size of the star packet, before compression and including all overheads due to headers and the sync words. The size of the star packet depends on the specific observing conditions, namely the possible truncation of RVS windows. The vector elements refer to the various possibilities in the order (1, 0) where the index denotes rvs_window_truncated and 0 = no and 1 = yes. SP2 class 1 corresponds to :Satellite:RVS:SWS_WindowClass_1
         # <p>
         # Source: EADS-Astrium, 16 January 2012, 'VPU to PDHU Telemetry Interface Control Document (ICD)', GAIA.ASF.ICD.SAT.00011, issue 2, revision 4<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        STARPACKET_SIZE_SP2CLASS1 = [ 60944, 60656 ] # [bit]

        #
         # Size of the star packet, before compression and including all overheads due to headers and the sync words. The size of the star packet depends on the specific observing conditions, namely the possible truncation of RVS windows. The vector elements refer to the various possibilities in the order (1, 0) where the index denotes rvs_window_truncated and 0 = no and 1 = yes. SP2 class 2 corresponds to :Satellite:RVS:SWS_WindowClass_2
         # <p>
         # Source: EADS-Astrium, 16 January 2012, 'VPU to PDHU Telemetry Interface Control Document (ICD)', GAIA.ASF.ICD.SAT.00011, issue 2, revision 4<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        STARPACKET_SIZE_SP2CLASS2 = [ 20624, 20336 ] # [bit]

        #
         # Size of the star packet, after compression. The main header and sync words always remain uncompressed. The size of the star packet depends on the specific observing conditions, namely the possible absence of BP/RP data, truncation of AF windows, and/or truncation of BP/RP windows. The vector elements refer to the various possibilities in the order ({1, -, -}, {0, -, -}) where the triplets refer to {xp_data_present, af_window_truncated, xp_window_truncated} and 0 = no and 1 = yes and - = not applicable. SP1 class 0A corresponds to :Satellite:SM:SWS_WindowClass_0 + :Satellite:AF:S1:SWS_WindowClass_0 + :Satellite:AF:S2/S5/S8:SWS_WindowClass_0 + :Satellite:AF:S3/S4/S6/S7/S9:SWS_WindowClass_0 + :Satellite:BP:SWS_WindowClass_0 + :Satellite:RP:SWS_WindowClass_0
         # <p>
         # Source: EADS-Astrium, 16 January 2012, 'VPU to PDHU Telemetry Interface Control Document (ICD)', GAIA.ASF.ICD.SAT.00011, issue 2, revision 4<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        STARPACKET_SIZEAFTERCOMPRESSION_SP1CLASS0A = [ 22350, 13268 ] # [bit]

        #
         # Size of the star packet, after compression. The main header and sync words always remain uncompressed. The size of the star packet depends on the specific observing conditions, namely the possible absence of BP/RP data, truncation of AF windows, and/or truncation of BP/RP windows. The vector elements refer to the various possibilities in the order ({1, 1, -}, {1, 0, -}, {0, -, -}) where the triplets refer to {xp_data_present, af_window_truncated, xp_window_truncated} and 0 = no and 1 = yes and - = not applicable. SP1 class 0B corresponds to :Satellite:SM:SWS_WindowClass_0 + :Satellite:AF:S1:SWS_WindowClass_0 + :Satellite:AF:S2/S5/S8:SWS_WindowClass_0 + :Satellite:AF:S3/S4/S6/S7/S9:SWS_WindowClass_0 + :Satellite:BP:SWS_WindowClass_1 + :Satellite:RP:SWS_WindowClass_1
         # <p>
         # Source: EADS-Astrium, 16 January 2012, 'VPU to PDHU Telemetry Interface Control Document (ICD)', GAIA.ASF.ICD.SAT.00011, issue 2, revision 4<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        STARPACKET_SIZEAFTERCOMPRESSION_SP1CLASS0B = [ 15657, 15552, 14712 ] # [bit]

        #
         # Size of the star packet, after compression. The main header and sync words always remain uncompressed. The size of the star packet depends on the specific observing conditions, namely the possible absence of BP/RP data, truncation of AF windows, and/or truncation of BP/RP windows. The vector elements refer to the various possibilities in the order ({1, 1, 1}, {1, 1, 0}, {1, 0, 1}, {1, 0, 0}, {0, 1, -}, {0, 0, -}) where the triplets refer to {xp_data_present, af_window_truncated, xp_window_truncated} and 0 = no and 1 = yes and - = not applicable. SP1 class 1 corresponds to :Satellite:SM:SWS_WindowClass_1 + :Satellite:AF:S1:SWS_WindowClass_1 + :Satellite:AF:S2/S5/S8:SWS_WindowClass_1 + :Satellite:AF:S3/S4/S6/S7/S9:SWS_WindowClass_1 + :Satellite:BP:SWS_WindowClass_1 + :Satellite:RP:SWS_WindowClass_1
         # <p>
         # Source: EADS-Astrium, 16 January 2012, 'VPU to PDHU Telemetry Interface Control Document (ICD)', GAIA.ASF.ICD.SAT.00011, issue 2, revision 4<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        STARPACKET_SIZEAFTERCOMPRESSION_SP1CLASS1 = [ 3089, 2968, 2790, 2668, 1996, 1697 ] # [bit]

        #
         # Size of the star packet, after compression. The main header and sync words always remain uncompressed. The size of the star packet depends on the specific observing conditions, namely the possible absence of BP/RP data, truncation of AF windows, and/or truncation of BP/RP windows. The vector elements refer to the various possibilities in the order ({1, 1, 1}, {1, 1, 0}, {1, 0, 1}, {1, 0, 0}, {0, 1, -}, {0, 0, -}) where the triplets refer to {xp_data_present, af_window_truncated, xp_window_truncated} and 0 = no and 1 = yes and - = not applicable. SP1 class 2 corresponds to :Satellite:SM:SWS_WindowClass_1 + :Satellite:AF:S1:SWS_WindowClass_2 + :Satellite:AF:S2/S5/S8:SWS_WindowClass_2 + :Satellite:AF:S3/S4/S6/S7/S9:SWS_WindowClass_2 + :Satellite:BP:SWS_WindowClass_1 + :Satellite:RP:SWS_WindowClass_1
         # <p>
         # Source: EADS-Astrium, 16 January 2012, 'VPU to PDHU Telemetry Interface Control Document (ICD)', GAIA.ASF.ICD.SAT.00011, issue 2, revision 4<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        STARPACKET_SIZEAFTERCOMPRESSION_SP1CLASS2 = [ 1997, 1907, 1793, 1703, 1186, 981 ] # [bit]

        #
         # Size of the star packet, after compression. The main header and sync words always remain uncompressed. The size of the star packet depends on the specific observing conditions, namely the possible truncation of RVS windows. The vector elements refer to the various possibilities in the order (1, 0) where the index denotes rvs_window_truncated and 0 = no and 1 = yes. SP2 class 2 corresponds to :Satellite:RVS:SWS_WindowClass_2
         # <p>
         # Source: EADS-Astrium, 16 January 2012, 'VPU to PDHU Telemetry Interface Control Document (ICD)', GAIA.ASF.ICD.SAT.00011, issue 2, revision 4<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        STARPACKET_SIZEAFTERCOMPRESSION_SP2CLASS1 = [ 8622, 8503 ] # [bit]

        #
         # Size of the star packet, after compression. The main header and sync words always remain uncompressed. The size of the star packet depends on the specific observing conditions, namely the possible truncation of RVS windows. The vector elements refer to the various possibilities in the order (1, 0) where the index denotes rvs_window_truncated and 0 = no and 1 = yes. SP2 class 2 corresponds to :Satellite:RVS:SWS_WindowClass_2
         # <p>
         # Source: EADS-Astrium, 16 January 2012, 'VPU to PDHU Telemetry Interface Control Document (ICD)', GAIA.ASF.ICD.SAT.00011, issue 2, revision 4<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        STARPACKET_SIZEAFTERCOMPRESSION_SP2CLASS2 = [ 8417, 8301 ] # [bit]

        #
         # Star-packet overhead, in units of percent. Video data (CCD samples) are stored into star packets (SPs). The overhead in this conversion, due to headers and the sync words, is quantified here. The size of the star packet depends on the specific observing conditions, namely the possible absence of BP/RP data, truncation of AF windows, and/or truncation of BP/RP windows. The vector elements refer to the various possibilities in the order ({1, -, -}, {0, -, -}) where the triplets refer to {xp_data_present, af_window_truncated, xp_window_truncated} and 0 = no and 1 = yes and - = not applicable. SP1 class 0A corresponds to :Satellite:SM:SWS_WindowClass_0 + :Satellite:AF:S1:SWS_WindowClass_0 + :Satellite:AF:S2/S5/S8:SWS_WindowClass_0 + :Satellite:AF:S3/S4/S6/S7/S9:SWS_WindowClass_0 + :Satellite:BP:SWS_WindowClass_0 + :Satellite:RP:SWS_WindowClass_0
         # <p>
         # Source: EADS-Astrium, 16 January 2012, 'VPU to PDHU Telemetry Interface Control Document (ICD)', GAIA.ASF.ICD.SAT.00011, issue 2, revision 4<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        STARPACKET_OVERHEAD_PERCENTSP1CLASS0A = [ 0.313, 0.530 ] # [%]

        #
         # Star-packet overhead, in units of percent. Video data (CCD samples) are stored into star packets (SPs). The overhead in this conversion, due to headers and the sync words, is quantified here. The size of the star packet depends on the specific observing conditions, namely the possible absence of BP/RP data, truncation of AF windows, and/or truncation of BP/RP windows. The vector elements refer to the various possibilities in the order ({1, 1, -}, {1, 0, -}, {0, -, -}) where the triplets refer to {xp_data_present, af_window_truncated, xp_window_truncated} and 0 = no and 1 = yes and - = not applicable. SP1 class 0B corresponds to :Satellite:SM:SWS_WindowClass_0 + :Satellite:AF:S1:SWS_WindowClass_0 + :Satellite:AF:S2/S5/S8:SWS_WindowClass_0 + :Satellite:AF:S3/S4/S6/S7/S9:SWS_WindowClass_0 + :Satellite:BP:SWS_WindowClass_1 + :Satellite:RP:SWS_WindowClass_1
         # <p>
         # Source: EADS-Astrium, 16 January 2012, 'VPU to PDHU Telemetry Interface Control Document (ICD)', GAIA.ASF.ICD.SAT.00011, issue 2, revision 4<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        STARPACKET_OVERHEAD_PERCENTSP1CLASS0B = [ 1.184, 0.501, 0.530 ] # [%]

        #
         # Star-packet overhead, in units of percent. Video data (CCD samples) are stored into star packets (SPs). The overhead in this conversion, due to headers and the sync words, is quantified here. The size of the star packet depends on the specific observing conditions, namely the possible absence of BP/RP data, truncation of AF windows, and/or truncation of BP/RP windows. The vector elements refer to the various possibilities in the order ({1, 1, 1}, {1, 1, 0}, {1, 0, 1}, {1, 0, 0}, {0, 1, -}, {0, 0, -}) where the triplets refer to {xp_data_present, af_window_truncated, xp_window_truncated} and 0 = no and 1 = yes and - = not applicable. SP1 class 1 corresponds to :Satellite:SM:SWS_WindowClass_1 + :Satellite:AF:S1:SWS_WindowClass_1 + :Satellite:AF:S2/S5/S8:SWS_WindowClass_1 + :Satellite:AF:S3/S4/S6/S7/S9:SWS_WindowClass_1 + :Satellite:BP:SWS_WindowClass_1 + :Satellite:RP:SWS_WindowClass_1
         # <p>
         # Source: EADS-Astrium, 16 January 2012, 'VPU to PDHU Telemetry Interface Control Document (ICD)', GAIA.ASF.ICD.SAT.00011, issue 2, revision 4<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        STARPACKET_OVERHEAD_PERCENTSP1CLASS1 = [ 10.417, 5.952, 9.150, 4.248, 9.259, 6.989 ] # [%]

        #
         # Star-packet overhead, in units of percent. Video data (CCD samples) are stored into star packets (SPs). The overhead in this conversion, due to headers and the sync words, is quantified here. The size of the star packet depends on the specific observing conditions, namely the possible absence of BP/RP data, truncation of AF windows, and/or truncation of BP/RP windows. The vector elements refer to the various possibilities in the order ({1, 1, 1}, {1, 1, 0}, {1, 0, 1}, {1, 0, 0}, {0, 1, -}, {0, 0, -}) where the triplets refer to {xp_data_present, af_window_truncated, xp_window_truncated} and 0 = no and 1 = yes and - = not applicable. SP1 class 2 corresponds to :Satellite:SM:SWS_WindowClass_1 + :Satellite:AF:S1:SWS_WindowClass_2 + :Satellite:AF:S2/S5/S8:SWS_WindowClass_2 + :Satellite:AF:S3/S4/S6/S7/S9:SWS_WindowClass_2 + :Satellite:BP:SWS_WindowClass_1 + :Satellite:RP:SWS_WindowClass_1
         # <p>
         # Source: EADS-Astrium, 16 January 2012, 'VPU to PDHU Telemetry Interface Control Document (ICD)', GAIA.ASF.ICD.SAT.00011, issue 2, revision 4<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        STARPACKET_OVERHEAD_PERCENTSP1CLASS2 = [ 11.348, 6.028, 11.111, 5.159, 10.494, 9.848 ] # [%]

        #
         # Star-packet overhead, in units of percent. Video data (CCD samples) are stored into star packets (SPs). The overhead in this conversion, due to headers and the sync words, is quantified here. The size of the star packet depends on the specific observing conditions, namely the possible truncation of RVS windows. The value quoted here is the default configuration: no window truncations. SP2 class 0 corresponds to :Satellite:RVS:SWS_WindowClass_0
         # <p>
         # Source: EADS-Astrium, 16 January 2012, 'VPU to PDHU Telemetry Interface Control Document (ICD)', GAIA.ASF.ICD.SAT.00011, issue 2, revision 4<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        STARPACKET_OVERHEAD_PERCENTSP2CLASS0 = 0.029 # [%]

        #
         # Star-packet overhead, in units of percent. Video data (CCD samples) are stored into star packets (SPs). The overhead in this conversion, due to headers and the sync words, is quantified here. The size of the star packet depends on the specific observing conditions, namely the possible truncation of RVS windows. The vector elements refer to the various possibilities in the order (1, 0) where the index denotes rvs_window_truncated and 0 = no and 1 = yes. SP2 class 1 corresponds to :Satellite:RVS:SWS_WindowClass_1
         # <p>
         # Source: EADS-Astrium, 16 January 2012, 'VPU to PDHU Telemetry Interface Control Document (ICD)', GAIA.ASF.ICD.SAT.00011, issue 2, revision 4<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        STARPACKET_OVERHEAD_PERCENTSP2CLASS1 = [ 0.767, 0.291 ] # [%]

        #
         # Star-packet overhead, in units of percent. Video data (CCD samples) are stored into star packets (SPs). The overhead in this conversion, due to headers and the sync words, is quantified here. The size of the star packet depends on the specific observing conditions, namely the possible truncation of RVS windows. The vector elements refer to the various possibilities in the order (1, 0) where the index denotes rvs_window_truncated and 0 = no and 1 = yes. SP2 class 2 corresponds to :Satellite:RVS:SWS_WindowClass_2
         # <p>
         # Source: EADS-Astrium, 16 January 2012, 'VPU to PDHU Telemetry Interface Control Document (ICD)', GAIA.ASF.ICD.SAT.00011, issue 2, revision 4<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        STARPACKET_OVERHEAD_PERCENTSP2CLASS2 = [ 2.302, 0.873 ] # [%]

        end



     class BAM
        #
         # Single-measurement fringe-pattern-localisation error, in units of 1E-6 arcsec, for the nominal BAM (the number is different for the redundant BAM). The error is assumed to be the Cram'er-Rao bound, which is derived purely from geometrical and signal-to-noise-ratio considerations, without taking fringe losses outside the CCD window, contrast degradation, radiation damage, CCD fringing, parasitic stars, prompt-particle events, laser-wavelength instability, etc., into account
         # <p>
         # Source: EADS-Astrium, 17 June 2010, 'Basic Angle Monitoring (BAM) Definition and Performances', GAIA.ASF.TCN.PLM.00117, issue 4, revision 0<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        BASICANGLE_SINGLEMEASUREMENTERROR_MICROARCSECOND = 1.26 # [10^-6 arcsec]

        #
         # Single-measurement fringe-pattern-localisation error, in units of 1E-6 rad, for the nominal BAM (the number is different for the redundant BAM). The error is assumed to be the Cram'er-Rao bound, which is derived purely from geometrical and signal-to-noise-ratio considerations, without taking fringe losses outside the CCD window, contrast degradation, radiation damage, CCD fringing, parasitic stars, prompt-particle events, laser-wavelength instability, etc., into account
         # <p>
         # Source: EADS-Astrium, 17 June 2010, 'Basic Angle Monitoring (BAM) Definition and Performances', GAIA.ASF.TCN.PLM.00117, issue 4, revision 0<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        BASICANGLE_SINGLEMEASUREMENTERROR_MICRORADIAN = 6.13e-6 # [10^-6 rad]

        #
         # Measurement error for the nominal BAM, after on-ground averaging over BasicAngle_NumberOfMeasurements single measurements / acquisitions / exposures obtained during BasicAngle_MeasurementInterval seconds (the number is different for the redundant BAM). Single-measurement fringe-pattern-localisation errors are assumed to be equal to the Cram'er-Rao bound. The sqrt(2) accounts for the fact that BAM measurements refer to differential location estimates of two finge patterns. BAM measurements represent the 'true' (effective) basic angle used in AGIS to within about 1E-6 arcsec (see EADS-Astrium, 9 July 2010, 'BAM efficiency simulation', GAIA.ASF.TCN.PLM.00584, issue 1, revision 0)
         # <p>
         # Source: EADS-Astrium, 17 June 2010, 'Basic Angle Monitoring (BAM) Definition and Performances', GAIA.ASF.TCN.PLM.00117, issue 4, revision 0<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        BASICANGLE_MEASUREMENTERROR = 0.52 # [10^-6 arcsec]

        #
         # Maximum possible number of single measurements / acquisitions / exposures underlying a (fundamental) BAM measurement. For a given exposure time of a single measurement / acquisition / exposure and for a given transfer time (nominally equal to 4600 TDI periods, following EADS-Astrium, 14 June 2011, 'VPU Requirements Specification', GAIA.ASU.SP.PLM.00024, issue 3, revision 2, Requirement 11798), the number of measurements which can be obtained during BasicAngle_MeasurementInterval seconds is limited to this number
         # <p>
         # Source: EADS-Astrium, 17 June 2010, 'Basic Angle Monitoring (BAM) Definition and Performances', GAIA.ASF.TCN.PLM.00117, issue 4, revision 0<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        BASICANGLE_NUMBEROFMEASUREMENTS_MAXIMUM = 12.0

        #
         # Default exposure time of a single measurement / acquisition / exposure, in units of TDI periods. This exposure time is configurable by the user between 1 and 2^16 times 16 TDI periods. The default value is 1272 * 16 TDI periods. In flight, following the actual BAM-OSE (laser) output power, BAM-OMA transmission, BDA transmission, etc., the exposure time will be adjusted in order to reach the maximum signal level possible on the highest-illumination pixel/sample for the pair of beams with highest transmission
         # <p>
         # Source: EADS-Astrium, 14 June 2011, 'VPU Requirements Specification', GAIA.ASU.SP.PLM.00024, issue 3, revision 2, Requirement VPU-11798. Reference document: EADS-Astrium, 17 June 2010, 'Basic Angle Monitoring (BAM) Definition and Performances', GAIA.ASF.TCN.PLM.00117, issue 4, revision 0<br/>
         # Status: TBC<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        BASICANGLE_EXPOSURETIME_TDIPERIOD = 20352.0 # [TDI period]

        #
         # Minimum exposure time of a single measurement / acquisition / exposure, in units of TDI periods. This exposure time is configurable by the user between 1 and 2^16 times 16 TDI periods. The default value is 1272 * 16 TDI periods
         # <p>
         # Source: EADS-Astrium, 14 June 2011, 'VPU Requirements Specification', GAIA.ASU.SP.PLM.00024, issue 3, revision 2, Requirement VPU-11798<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        BASICANGLE_EXPOSURETIME_TDIPERIODMINIMUM = 16.0 # [TDI period]

        #
         # Maximum exposure time of a single measurement / acquisition / exposure, in units of TDI periods. This exposure time is configurable by the user between 1 and 2^16 times 16 TDI periods. The default value is 1272 * 16 TDI periods
         # <p>
         # Source: EADS-Astrium, 14 June 2011, 'VPU Requirements Specification', GAIA.ASU.SP.PLM.00024, issue 3, revision 2, Requirement VPU-11798<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        BASICANGLE_EXPOSURETIME_TDIPERIODMAXIMUM = 1048576.0 # [TDI period]

        #
         # Default exposure time of a single measurement / acquisition / exposure, in units of seconds. In flight, following the actual BAM-OSE (laser) output power, BAM-OMA transmission, BDA transmission, etc., the exposure time will be adjusted in order to reach the maximum signal level possible on the highest-illumination pixel/sample for the pair of beams with highest transmission
         # <p>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        BASICANGLE_EXPOSURETIME_SECOND = 20.002 # [s]

        #
         # Maximum number of photo-electrons per pixel in the CCD (at the peak of the central fringe) during each single measurement / acquisition / exposure. The CCD exposure time (parameter BasicAngle_ExposureTime_Second) is adjusted in flight, for the finally-selected BAM-OSE level (laser power; parameter Laser_Power), such that the highest-illumination pixel/sample for the pair of beams with highest transmission fills up to the pixel full-well capacity; as a result, the highest-illumination pixel/sample for the other beam pair fills up to a factor (Optics_Transmissivity_850nm[2] + Optics_Transmissivity_850nm[3]) / (Optics_Transmissivity_850nm[0] + Optics_Transmissivity_850nm[1]) of the pixel full-well capacity
         # <p>
         # Source: EADS-Astrium, 17 June 2010, 'Basic Angle Monitoring (BAM) Definition and Performances', GAIA.ASF.TCN.PLM.00117, issue 4, revision 0<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        CCD_NUMBEROFPHOTOELECTRONS_MAXIMUMPERPIXEL = 190000.0 # [e^-]

        #
         # Waist diameter of the nominal collimated laser beam, in units of m. The redundant collimated laser beam has a waist diameter of 3.050E-3 m
         # <p>
         # Source: EADS-Astrium, 5 April 2011, 'BAM beam size on FPA', GAIA.ASF.TCN.PLM.00638, issue 1, revision 0. Reference document: EADS-Astrium, 17 June 2010, 'Basic Angle Monitoring (BAM) Definition and Performances', GAIA.ASF.TCN.PLM.00117, issue 4, revision 0<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        COLLIMATEDBEAM_DIAMETER = 3.502e-3 # [m]

        #
         # Order-of-magnitude calculation of the total number of photo-electrons generated during each single measurement / acquisition / exposure. The vector elements of this parameter refer to the four BAM-OMA beams, A, A^\prime, C, and C^\prime (beam pair A-A^\prime being directed to telescope 2 [following FoV] and beam pair C-C^\prime being directed to telescope 1 [preceding FoV])
         # <p>
         # Source: EADS-Astrium, 17 June 2010, 'Basic Angle Monitoring (BAM) Definition and Performances', GAIA.ASF.TCN.PLM.00117, issue 4, revision 0<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        LASER_NUMBEROFPHOTOELECTRONS_EFFECTIVE = [ 2.28e+9, 1.91e+9, 1.02e+9, 1.46e+9 ] # [e^-]

        #
         # Transmission of a single beam splitter in the BAM optics at (roughly) the wavelength of the laser. The beam splitters contain an anti-reflection coating with an assumed transmissivity of 0.99
         # <p>
         # Source: EADS-Astrium, 17 June 2010, 'Basic Angle Monitoring (BAM) Definition and Performances', GAIA.ASF.TCN.PLM.00117, issue 4, revision 0 and E.A. Meijer (TNO), 1 July 2008, 'BAM OMA optical design and analysis report', GAIA.TNO.RP.BAM.00018, issue 3, revision 0<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        OPTICS_BEAMSPLITTERTRANSMISSIVITY_850NM = 0.495

        #
         # Reflectivity of a single beam splitter in the BAM optics at (roughly) the wavelength of the laser. The beam splitters contain an anti-reflection coating with an assumed transmissivity of 0.99
         # <p>
         # Source: EADS-Astrium, 17 June 2010, 'Basic Angle Monitoring (BAM) Definition and Performances', GAIA.ASF.TCN.PLM.00117, issue 4, revision 0 and E.A. Meijer (TNO), 1 July 2008, 'BAM OMA optical design and analysis report', GAIA.TNO.RP.BAM.00018, issue 3, revision 0<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        OPTICS_BEAMSPLITTERREFLECTIVITY_850NM = 0.495

        #
         # Reflectivity of a single mirror in the BAM optics at (roughly) the wavelength of the laser. The mirrors have a protected-Silver coating (with a Silicon-oxide protection layer) with an assumed reflectivity of 0.98 excluding scattering losses caused by the porosity of SiC; these losses are conservatively assumed to be 1 - 0.933
         # <p>
         # Source: EADS-Astrium, 17 June 2010, 'Basic Angle Monitoring (BAM) Definition and Performances', GAIA.ASF.TCN.PLM.00117, issue 4, revision 0 and E.A. Meijer (TNO), 1 July 2008, 'BAM OMA optical design and analysis report', GAIA.TNO.RP.BAM.00018, issue 3, revision 0<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        OPTICS_MIRRORREFLECTIVITY_850NM = 0.914

        #
         # Requirement BAM-OMA-1102 in EADS-Astrium, 24 July 2007, 'BAM Opto-Mechanical Assembly (OMA) Requirements Specification', GAIA.ASF.SP.PLM.00020, issue 4, revision 0 requires a factor 50,000 (\pm 5%) optical attenuation to suppress straylight caused by the mirrors of the BAM system. This will be achieved by a combination of a polariser (parameter Optics_PolariserTransmissivity_850nm) and a BG40 coloured-glass filter, both mounted at each BAM-OMA collimator output
         # <p>
         # Source: EADS-Astrium, 17 June 2010, 'Basic Angle Monitoring (BAM) Definition and Performances', GAIA.ASF.TCN.PLM.00117, issue 4, revision 0 and E.A. Meijer (TNO), 1 July 2008, 'BAM OMA optical design and analysis report', GAIA.TNO.RP.BAM.00018, issue 3, revision 0<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        OPTICS_ATTENUATION_850NM = 2.26e-5

        #
         # Transmission of the polariser in the BAM optics at (roughly) the wavelength of the laser. A polarisation-maintaining fiber transmits the laser light from the BAM-OSE to the BAM-OMA: the light is nominally linearly (horizontally) polarised in a plane parallel to the base plate. Following Requirement BAM-OMA-1101 in EADS-Astrium, 24 July 2007, 'BAM Opto-Mechanical Assembly (OMA) Requirements Specification', GAIA.ASF.SP.PLM.00020, issue 4, revision 0, an extra polariser is used with a ratio between horizontal and vertical polarisation between 15 dB and 18 dB, meaning that between 3.16% and 1.58% of the output will be absorbed by the polariser. Since the transmission of this polariser for the desired polarisation exceeds 0.913, the transmitted laser power by the polariser nominally equals (1 - 0.0316) * 0.913
         # <p>
         # Source: EADS-Astrium, 17 June 2010, 'Basic Angle Monitoring (BAM) Definition and Performances', GAIA.ASF.TCN.PLM.00117, issue 4, revision 0 and E.A. Meijer (TNO), 1 July 2008, 'BAM OMA optical design and analysis report', GAIA.TNO.RP.BAM.00018, issue 3, revision 0<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        OPTICS_POLARISERTRANSMISSIVITY_850NM = 0.884

        #
         # Transmission of the BAM optics (including BAM-OMA-internal mirrors, beam splitters, polariser, and BAM-optics attenuation, but excluding the telescope, BDA, and CCD QE) at (roughly) the wavelength of the laser. The vector elements of this parameter refer to the four BAM-OMA beams, A, A^\prime, C, and C^\prime (beam pair A-A^\prime being directed to telescope 2 [following FoV] and beam pair C-C^\prime being directed to telescope 1 [preceding FoV])
         # <p>
         # Source: EADS-Astrium, 17 June 2010, 'Basic Angle Monitoring (BAM) Definition and Performances', GAIA.ASF.TCN.PLM.00117, issue 4, revision 0<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        OPTICS_TRANSMISSIVITY_850NM = [ 3.75e-6, 3.13e-6, 1.67e-6, 2.39e-6 ]

        #
         # Diameter of the nominal laser-beam-spot on the CCD, in units of m. The laser-beam spot is defined with respect to 99% energy. The redundant laser-beam-spot diameter equals 1.860e-2 m
         # <p>
         # Source: EADS-Astrium, 17 June 2010, 'Basic Angle Monitoring (BAM) Definition and Performances', GAIA.ASF.TCN.PLM.00117, issue 4, revision 0; the equation has been provided by A. Mora (ESA), priv. comm., 18 November 2010<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        SPOT_DIAMETER = 1.620e-2 # [m]

        #
         # Diameter of the nominal laser-beam-spot on the CCD, in units of (along-scan) pixels. The laser-beam spot is defined with respect to 99% energy. The redundant laser-beam-spot diameter equals 1860 (along-scan) pixels
         # <p>
         # Source: EADS-Astrium, 17 June 2010, 'Basic Angle Monitoring (BAM) Definition and Performances', GAIA.ASF.TCN.PLM.00117, issue 4, revision 0<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        SPOT_DIAMETER_PIXEL = 1620.0 # [AL pixel]

        #
         # Period of the Young fringes on the CCD (also called fringe-pattern pitch), in units of 10^-6 m
         # <p>
         # Source: EADS-Astrium, 17 June 2010, 'Basic Angle Monitoring (BAM) Definition and Performances', GAIA.ASF.TCN.PLM.00117, issue 4, revision 0<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        YOUNGFRINGES_PERIOD = 55.0 # [10^-6 m]

        #
         # Period of the Young fringes on the CCD (also called fringe-pattern pitch), in units of (along-scan) pixels
         # <p>
         # Source: EADS-Astrium, 17 June 2010, 'Basic Angle Monitoring (BAM) Definition and Performances', GAIA.ASF.TCN.PLM.00117, issue 4, revision 0<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        YOUNGFRINGES_PERIOD_PIXEL = 5.5 # [AL pixel]

        #
         # Number of Young fringes in the nominal laser-beam spot. The laser-beam spot is defined with respect to 99% energy. The number of Young fringes in the redundant laser-beam spot equals 338
         # <p>
         # Source: EADS-Astrium, 17 June 2010, 'Basic Angle Monitoring (BAM) Definition and Performances', GAIA.ASF.TCN.PLM.00117, issue 4, revision 0<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        YOUNGFRINGES_PERSPOT = 294.0

        end



     class VPU
        #
         # VPA SW parameter [BP_RP_MS_LEN]
         # <p>
         # Source: EADS-Astrium, 17 November 2011, 'Gaia VPU CDMU TM/TC ICD parameter ID list', GAIA.AST.TCN.VPU.00003, issue 7, revision 1, Table 5.1-1<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        BPRPMSLEN = 4

        #
         # VPA SW parameter [BP_RP_WIN_AC_LEN]
         # <p>
         # Source: EADS-Astrium, 17 November 2011, 'Gaia VPU CDMU TM/TC ICD parameter ID list', GAIA.AST.TCN.VPU.00003, issue 7, revision 1, Table 5.1-1<br/>
         # Status: DEPR<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        BPRPWINACLEN = 12

        #
         # VPA SW parameter [BP_RP_WIN_AL4_LEN]
         # <p>
         # Source: EADS-Astrium, 17 November 2011, 'Gaia VPU CDMU TM/TC ICD parameter ID list', GAIA.AST.TCN.VPU.00003, issue 7, revision 1, Table 5.1-1<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        BPRPWINAL4LEN = 15

        #
         # VPA SW parameter [BP_RP_WIN_AL_LEN]
         # <p>
         # Source: EADS-Astrium, 17 November 2011, 'Gaia VPU CDMU TM/TC ICD parameter ID list', GAIA.AST.TCN.VPU.00003, issue 7, revision 1, Table 5.1-1<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        BPRPWINALLEN = 60

        #
         # VPA SW parameter [BP_RP_WIN_MIN_AC_LEN]
         # <p>
         # Source: EADS-Astrium, 17 November 2011, 'Gaia VPU CDMU TM/TC ICD parameter ID list', GAIA.AST.TCN.VPU.00003, issue 7, revision 1, Table 5.1-1<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        BPRPWINMINACLEN = 12

        #
         # VPA SW parameter [C_AC_FIRST_POSTSCAN]
         # <p>
         # Source: EADS-Astrium, 17 November 2011, 'Gaia VPU CDMU TM/TC ICD parameter ID list', GAIA.AST.TCN.VPU.00003, issue 7, revision 1, Table 5.1-1<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        CACFIRSTPOSTSCAN = 1980

        #
         # VPA SW parameter [C_AC_LAST_PIXEL]
         # <p>
         # Source: EADS-Astrium, 17 November 2011, 'Gaia VPU CDMU TM/TC ICD parameter ID list', GAIA.AST.TCN.VPU.00003, issue 7, revision 1, Table 5.1-1<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        CACLASTPIXEL = 1979

        #
         # VPA SW parameter [C_AC_LAST_PRESCAN]
         # <p>
         # Source: EADS-Astrium, 17 November 2011, 'Gaia VPU CDMU TM/TC ICD parameter ID list', GAIA.AST.TCN.VPU.00003, issue 7, revision 1, Table 5.1-1<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        CACLASTPRESCAN = 13

        #
         # VPA SW parameter [C_AF_CCD_NUMBER]
         # <p>
         # Source: EADS-Astrium, 17 November 2011, 'Gaia VPU CDMU TM/TC ICD parameter ID list', GAIA.AST.TCN.VPU.00003, issue 7, revision 1, Table 5.1-1<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        CAFCCDNUMBER = 9

        #
         # VPA SW parameter [C_BPRP_SAMPLE_LINE_NUMBER_CLASS_0A]
         # <p>
         # Source: EADS-Astrium, 17 November 2011, 'Gaia VPU CDMU TM/TC ICD parameter ID list', GAIA.AST.TCN.VPU.00003, issue 7, revision 1, Table 5.1-1<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        CBPRPSAMPLELINENUMBERCLASS0A = 12

        #
         # VPA SW parameter [C_BPRP_SAMPLE_NUMBER_CLASS0A]
         # <p>
         # Source: EADS-Astrium, 17 November 2011, 'Gaia VPU CDMU TM/TC ICD parameter ID list', GAIA.AST.TCN.VPU.00003, issue 7, revision 1, Table 5.1-1<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        CBPRPSAMPLENUMBERCLASS0A = 720

        #
         # VPA SW parameter [C_BPRP_SAMPLE_NUMBER_CLASS0B_1_2]
         # <p>
         # Source: EADS-Astrium, 17 November 2011, 'Gaia VPU CDMU TM/TC ICD parameter ID list', GAIA.AST.TCN.VPU.00003, issue 7, revision 1, Table 5.1-1<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        CBPRPSAMPLENUMBERCLASS0B12 = 60

        #
         # VPA SW parameter [C_MAGNITUDE_NUMBER_CLASS1_2]
         # <p>
         # Source: EADS-Astrium, 17 November 2011, 'Gaia VPU CDMU TM/TC ICD parameter ID list', GAIA.AST.TCN.VPU.00003, issue 7, revision 1, Table 5.1-1<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        CMAGNITUDENUMBERCLASS12 = 23

        #
         # VPA SW parameter [C_MAGNITUDE_NUMBER_CLASS2]
         # <p>
         # Source: EADS-Astrium, 17 November 2011, 'Gaia VPU CDMU TM/TC ICD parameter ID list', GAIA.AST.TCN.VPU.00003, issue 7, revision 1, Table 5.1-1<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        CMAGNITUDENUMBERCLASS2 = 9

        #
         # VPA SW parameter [C_PRESCAN_RESOURCES]
         # <p>
         # Source: EADS-Astrium, 17 November 2011, 'Gaia VPU CDMU TM/TC ICD parameter ID list', GAIA.AST.TCN.VPU.00003, issue 7, revision 1, Table 5.1-1<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        CPRESCANRESOURCES = 2

        #
         # VPA SW parameter [C_RVS_CCD_NUMBER]
         # <p>
         # Source: EADS-Astrium, 17 November 2011, 'Gaia VPU CDMU TM/TC ICD parameter ID list', GAIA.AST.TCN.VPU.00003, issue 7, revision 1, Table 5.1-1<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        CRVSCCDNUMBER = 3

        #
         # VPA SW parameter [C_SM_CCD_NUMBER]
         # <p>
         # Source: EADS-Astrium, 17 November 2011, 'Gaia VPU CDMU TM/TC ICD parameter ID list', GAIA.AST.TCN.VPU.00003, issue 7, revision 1, Table 5.1-1<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        CSMCCDNUMBER = 2

        #
         # VPA SW parameter [C_SM_SAMPLE_NUMBER_CLASS0]
         # <p>
         # Source: EADS-Astrium, 17 November 2011, 'Gaia VPU CDMU TM/TC ICD parameter ID list', GAIA.AST.TCN.VPU.00003, issue 7, revision 1, Table 5.1-1<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        CSMSAMPLENUMBERCLASS0 = 240

        #
         # VPA SW parameter [C_SM_SAMPLE_NUMBER_CLASS1_2]
         # <p>
         # Source: EADS-Astrium, 17 November 2011, 'Gaia VPU CDMU TM/TC ICD parameter ID list', GAIA.AST.TCN.VPU.00003, issue 7, revision 1, Table 5.1-1<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        CSMSAMPLENUMBERCLASS12 = 60

        #
         # VPA SW parameter [C_T_INT8_MIN]
         # <p>
         # Source: EADS-Astrium, 17 November 2011, 'Gaia VPU CDMU TM/TC ICD parameter ID list', GAIA.AST.TCN.VPU.00003, issue 7, revision 1, Table 5.1-1<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        CTINT8MIN = -128

        #
         # VPA SW parameter [NUMBER_OF_SM]
         # <p>
         # Source: EADS-Astrium, 17 November 2011, 'Gaia VPU CDMU TM/TC ICD parameter ID list', GAIA.AST.TCN.VPU.00003, issue 7, revision 1, Table 5.1-1<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        NUMBEROFSM = 2

        #
         # VPA SW parameter [RP_AC_ZOOM_INDEX_SHIFT]
         # <p>
         # Source: EADS-Astrium, 17 November 2011, 'Gaia VPU CDMU TM/TC ICD parameter ID list', GAIA.AST.TCN.VPU.00003, issue 7, revision 1, Table 5.1-1<br/>
         # Status: CONF<br/>
         # Basic : false<br/>
         # Scalar: true
         #
        RPACZOOMINDEXSHIFT = 128

        end



end



end